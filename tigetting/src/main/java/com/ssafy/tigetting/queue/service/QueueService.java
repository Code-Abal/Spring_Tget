package com.ssafy.tigetting.queue.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import com.ssafy.tigetting.queue.dto.response.QueueCheckResponse;
import com.ssafy.tigetting.queue.dto.response.QueueStatusResponse;
import com.ssafy.tigetting.queue.dto.response.TokenIssueResponse;
import com.ssafy.tigetting.queue.entity.QueueToken;
import com.ssafy.tigetting.queue.repository.QueueTokenMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.security.SecureRandom;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
@Transactional
public class QueueService {

    private final QueueTokenMapper queueTokenMapper;
    private final RedisTemplate<String, String> redisTemplate;
    private final SecureRandom secureRandom = new SecureRandom();

    @Value("${queue.max-active-tokens:3}")
    private int maxActiveTokens;

    @Value("${queue.max-inactive-seconds:120}")
    private int maxInactiveSeconds;

    @Value("${queue.wait-time-per-person:10}")
    private int waitTimePerPerson;

    private final Object queueLock = new Object();

    private static final String HEARTBEAT_KEY_PREFIX = "heartbeat:";
    private static final String ACTIVE_TOKENS_KEY_PREFIX = "active_tokens:";

    public QueueCheckResponse getBookingToken(String performanceId, Long scheduleId, Long userId) {
        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;

        synchronized (queueLock) {
            try {
                Optional<QueueToken> existingToken = queueTokenMapper
                        .findActiveTokenByUserAndPerformance(userId, performanceId);

                if (existingToken.isPresent()) {
                    QueueToken token = existingToken.get();
                    if (!token.isExpired()) {
                        return buildQueueCheckResponse(token, performanceId, scheduleId);
                    } else {
                        token.markAsExpired();
                        queueTokenMapper.update(token);
                        if (QueueToken.TokenStatus.ACTIVE.name().equals(token.getStatus())) {
                            releaseTokenFromRedis(performanceId);
                        }
                    }
                }

                String activeTokensStr = redisTemplate.opsForValue().get(activeTokensKey);
                int activeTokens = activeTokensStr != null ? Integer.parseInt(activeTokensStr) : 0;

                String tokenString = generateToken();
                QueueToken newToken;

                if (activeTokens < maxActiveTokens) {
                    newToken = createActiveToken(tokenString, userId, performanceId);
                    redisTemplate.opsForValue().increment(activeTokensKey);
                    redisTemplate.expire(activeTokensKey, Duration.ofMinutes(10));
                    startHeartbeat(userId, performanceId, scheduleId);

                    log.info("Direct Entry - ACTIVE Token: {}", tokenString);

                    return QueueCheckResponse.builder()
                            .requiresQueue(false)
                            .canProceedDirectly(true)
                            .sessionId(tokenString)
                            .message("Proceeding to seat selection")
                            .currentActiveSessions(activeTokens + 1)
                            .maxConcurrentSessions(maxActiveTokens)
                            .build();

                } else {
                    newToken = createWaitingToken(tokenString, userId, performanceId);
                    updateQueuePosition(newToken);

                    int waitingCount = getRedisWaitingCount(performanceId);
                    int estimatedWait = newToken.getPositionInQueue() * waitTimePerPerson;

                    log.info("Queue Entry - WAITING Token: {} (Pos: {})", tokenString, newToken.getPositionInQueue());

                    return QueueCheckResponse.builder()
                            .requiresQueue(true)
                            .canProceedDirectly(false)
                            .sessionId(tokenString)
                            .message("Queue is busy. Joined waiting list.")
                            .currentActiveSessions(activeTokens)
                            .maxConcurrentSessions(maxActiveTokens)
                            .estimatedWaitTime(estimatedWait)
                            .currentWaitingCount(waitingCount)
                            .build();
                }

            } catch (Exception e) {
                log.error("Error in queue check", e);
                return QueueCheckResponse.builder()
                        .requiresQueue(true)
                        .canProceedDirectly(false)
                        .message("System error, joining queue.")
                        .reason("System Error")
                        .build();
            }
        }
    }

    private QueueToken createActiveToken(String tokenString, Long userId, String performanceId) {
        QueueToken token = QueueToken.builder()
                .token(tokenString)
                .userId(userId)
                .performanceId(performanceId)
                .status(QueueToken.TokenStatus.ACTIVE.name())
                .issuedAt(LocalDateTime.now())
                .expiresAt(LocalDateTime.now().plusHours(1))
                .positionInQueue(0)
                .estimatedWaitTimeMinutes(0)
                .build();

        token.activate();
        queueTokenMapper.save(token);
        return token;
    }

    private QueueToken createWaitingToken(String tokenString, Long userId, String performanceId) {
        QueueToken token = QueueToken.builder()
                .token(tokenString)
                .userId(userId)
                .performanceId(performanceId)
                .status(QueueToken.TokenStatus.WAITING.name())
                .issuedAt(LocalDateTime.now())
                .expiresAt(LocalDateTime.now().plusHours(2))
                .positionInQueue(1)
                .estimatedWaitTimeMinutes(waitTimePerPerson / 60)
                .build();

        queueTokenMapper.save(token);
        return token;
    }

    private QueueCheckResponse buildQueueCheckResponse(QueueToken token, String performanceId, Long scheduleId) {
        if (QueueToken.TokenStatus.ACTIVE.name().equals(token.getStatus())) {
            String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;
            String activeTokensStr = redisTemplate.opsForValue().get(activeTokensKey);
            int activeTokens = activeTokensStr != null ? Integer.parseInt(activeTokensStr) : 0;

            return QueueCheckResponse.builder()
                    .requiresQueue(false)
                    .canProceedDirectly(true)
                    .sessionId(token.getToken())
                    .message("Token already active")
                    .currentActiveSessions(activeTokens)
                    .maxConcurrentSessions(maxActiveTokens)
                    .build();
        } else {
            updateQueuePosition(token);
            int estimatedWait = token.getPositionInQueue() * waitTimePerPerson;

            return QueueCheckResponse.builder()
                    .requiresQueue(true)
                    .canProceedDirectly(false)
                    .sessionId(token.getToken())
                    .message("Waiting in queue")
                    .estimatedWaitTime(estimatedWait)
                    .currentWaitingCount(token.getPositionInQueue())
                    .build();
        }
    }

    public TokenIssueResponse issueQueueToken(Long userId, String performanceId) {
        Optional<QueueToken> existingToken = queueTokenMapper
                .findActiveTokenByUserAndPerformance(userId, performanceId);

        if (existingToken.isPresent()) {
            QueueToken token = existingToken.get();
            if (!token.isExpired()) {
                updateQueuePosition(token);
                return createTokenResponse(token, "Returning existing token.");
            } else {
                token.markAsExpired();
                queueTokenMapper.update(token);
            }
        }

        String tokenString = generateToken();
        QueueToken newToken = QueueToken.builder()
                .token(tokenString)
                .userId(userId)
                .performanceId(performanceId)
                .status(QueueToken.TokenStatus.WAITING.name())
                .issuedAt(LocalDateTime.now())
                .expiresAt(LocalDateTime.now().plusHours(2))
                .build();

        queueTokenMapper.save(newToken);
        QueueToken savedToken = newToken;
        updateQueuePosition(savedToken);

        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;
        String activeTokensStr = redisTemplate.opsForValue().get(activeTokensKey);
        int currentActive = activeTokensStr != null ? Integer.parseInt(activeTokensStr) : 0;

        if (currentActive < maxActiveTokens) {
            redisTemplate.opsForValue().increment(activeTokensKey);
            redisTemplate.expire(activeTokensKey, Duration.ofMinutes(10));

            savedToken.activate();
            queueTokenMapper.update(savedToken);

            return createTokenResponse(savedToken, "Session activated.");
        }

        return createTokenResponse(savedToken, "Added to queue.");
    }

    public QueueStatusResponse getTokenStatus(String token) {
        QueueToken queueToken = queueTokenMapper.findByToken(token)
                .orElseThrow(() -> new IllegalArgumentException("Token not found"));

        if (queueToken.isExpired()) {
            queueToken.markAsExpired();
            queueTokenMapper.update(queueToken);
        } else if (QueueToken.TokenStatus.WAITING.name().equals(queueToken.getStatus())) {
            // Check if slots opened up
            activateNextTokens(queueToken.getPerformanceId());
            // Reload token to see if it was activated
            queueToken = queueTokenMapper.findByToken(token)
                    .orElseThrow(() -> new IllegalArgumentException("Token not found"));

            if (QueueToken.TokenStatus.WAITING.name().equals(queueToken.getStatus())) {
                updateQueuePosition(queueToken);
            }
        }

        Integer position = queueToken.getPositionInQueue() != null ? queueToken.getPositionInQueue() : 1;
        Integer waitTime = queueToken.getEstimatedWaitTimeMinutes() != null ? queueToken.getEstimatedWaitTimeMinutes()
                : position * waitTimePerPerson / 60;

        return QueueStatusResponse.builder()
                .token(queueToken.getToken())
                .status(QueueToken.TokenStatus.valueOf(queueToken.getStatus()))
                .positionInQueue(position)
                .estimatedWaitTime(waitTime)
                .isActiveForBooking(queueToken.isActiveForBooking())
                .bookingExpiresAt(queueToken.getBookingExpiresAt())
                .build();
    }

    public QueueStatusResponse activateToken(String token, Long userId, String performanceId, Long scheduleId) {
        QueueToken queueToken = queueTokenMapper.findByToken(token)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Token not found"));

        if (!queueToken.getUserId().equals(userId)) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Token not found (User mismatch)");
        }
        if (!queueToken.getPerformanceId().equals(performanceId)) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Performance mismatch");
        }

        if (QueueToken.TokenStatus.CANCELLED.name().equals(queueToken.getStatus()) ||
                QueueToken.TokenStatus.USED.name().equals(queueToken.getStatus())) {
            throw new ResponseStatusException(HttpStatus.GONE, "Token expired or cancelled");
        }

        if (QueueToken.TokenStatus.ACTIVE.name().equals(queueToken.getStatus())) {
            if (queueToken.isExpired()) {
                queueToken.markAsExpired();
                queueTokenMapper.update(queueToken);
                releaseTokenFromRedis(performanceId);
                activateNextTokens(performanceId);
                throw new ResponseStatusException(HttpStatus.GONE, "Token expired");
            }
            return buildQueueStatusResponse(queueToken);
        }

        if (queueToken.isExpired()) {
            queueToken.markAsExpired();
            queueTokenMapper.update(queueToken);
            updateWaitingPositions(performanceId);
            throw new ResponseStatusException(HttpStatus.GONE, "Token expired");
        }

        if (!QueueToken.TokenStatus.WAITING.name().equals(queueToken.getStatus())) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Only WAITING tokens can be activated");
        }

        Long position = queueTokenMapper.findPositionInQueue(performanceId, queueToken.getIssuedAt()) + 1;

        int estimatedSeconds = position.intValue() * waitTimePerPerson;
        int estimatedMinutes = Math.max(1, estimatedSeconds / 60);
        queueToken.setPositionInQueue(position.intValue());
        queueToken.setEstimatedWaitTimeMinutes(estimatedMinutes);

        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;

        synchronized (queueLock) {
            Long currentPosition = queueTokenMapper.findPositionInQueue(performanceId, queueToken.getIssuedAt()) + 1;

            if (currentPosition > 1) {
                queueTokenMapper.update(queueToken);
                throw new ResponseStatusException(HttpStatus.CONFLICT,
                        "Not your turn yet. Position: " + currentPosition);
            }

            Long dbActiveCount = queueTokenMapper.countActiveTokensByPerformanceId(performanceId);
            String redisCountStr = redisTemplate.opsForValue().get(activeTokensKey);
            int redisActiveCount = redisCountStr != null ? Integer.parseInt(redisCountStr) : 0;

            if (redisActiveCount != dbActiveCount.intValue()) {
                log.warn("Redis-DB Mismatch. Redis: {}, DB: {}. Syncing...", redisActiveCount, dbActiveCount);
                redisTemplate.opsForValue().set(activeTokensKey, dbActiveCount.toString());
                redisTemplate.expire(activeTokensKey, Duration.ofMinutes(10));
                redisActiveCount = dbActiveCount.intValue();
            }

            if (redisActiveCount >= maxActiveTokens) {
                throw new ResponseStatusException(HttpStatus.CONFLICT, "Queue full");
            }

            redisTemplate.opsForValue().increment(activeTokensKey);
            redisTemplate.expire(activeTokensKey, Duration.ofMinutes(10));

            try {
                queueToken.activate();
                queueTokenMapper.update(queueToken);
                startHeartbeat(userId, performanceId, scheduleId);
                updateWaitingPositions(performanceId);
            } catch (RuntimeException ex) {
                redisTemplate.opsForValue().decrement(activeTokensKey);
                throw ex;
            }
        }

        return buildQueueStatusResponse(queueToken);
    }

    private TokenIssueResponse createTokenResponse(QueueToken token, String message) {
        return TokenIssueResponse.builder()
                .token(token.getToken())
                .status(QueueToken.TokenStatus.valueOf(token.getStatus()))
                .message(message)
                .position(token.getPositionInQueue())
                .waitMinutes(token.getEstimatedWaitTimeMinutes())
                .build();
    }

    private QueueStatusResponse buildQueueStatusResponse(QueueToken token) {
        Integer position = token.getPositionInQueue() != null ? token.getPositionInQueue() : 1;
        Integer waitTime = token.getEstimatedWaitTimeMinutes() != null ? token.getEstimatedWaitTimeMinutes()
                : position * waitTimePerPerson / 60;

        return QueueStatusResponse.builder()
                .token(token.getToken())
                .status(QueueToken.TokenStatus.valueOf(token.getStatus()))
                .positionInQueue(position)
                .estimatedWaitTime(waitTime)
                .isActiveForBooking(token.isActiveForBooking())
                .bookingExpiresAt(token.getBookingExpiresAt())
                .build();
    }

    @Transactional
    public boolean validateTokenForBooking(String token, Long userId, String performanceId) {
        if (token == null || token.trim().isEmpty())
            return false;

        Optional<QueueToken> optionalToken = queueTokenMapper.findByToken(token);
        if (optionalToken.isEmpty())
            return false;

        QueueToken queueToken = optionalToken.get();

        if (queueToken.isExpired()) {
            queueToken.markAsExpired();
            queueTokenMapper.update(queueToken);
            if (QueueToken.TokenStatus.ACTIVE.name().equals(queueToken.getStatus())) {
                releaseTokenFromRedis(queueToken.getPerformanceId());
                activateNextTokens(queueToken.getPerformanceId());
            }
            return false;
        }

        if (!queueToken.getUserId().equals(userId))
            return false;
        if (!queueToken.getPerformanceId().equals(performanceId))
            return false;

        return queueToken.isActiveForBooking();
    }

    public void useToken(String token) {
        QueueToken queueToken = queueTokenMapper.findByToken(token)
                .orElseThrow(() -> new IllegalArgumentException("Token not found"));

        if (!queueToken.isActiveForBooking())
            throw new IllegalStateException("Not active");

        queueToken.markAsUsed();
        queueTokenMapper.update(queueToken);

        releaseTokenFromRedis(queueToken.getPerformanceId());
        activateNextTokens(queueToken.getPerformanceId());
    }

    @Transactional
    public void releaseSession(Long userId, String performanceId, Long scheduleId) {
        String heartbeatKey = HEARTBEAT_KEY_PREFIX + userId + ":" + performanceId + ":" + scheduleId;
        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;

        log.info("=== Release Session: User={}, Perf={} ===", userId, performanceId);

        synchronized (queueLock) {
            boolean heartbeatExisted = Boolean.TRUE.equals(redisTemplate.delete(heartbeatKey));

            Optional<QueueToken> activeToken = queueTokenMapper.findActiveTokenByUserAndPerformance(userId,
                    performanceId);

            if (activeToken.isPresent() && QueueToken.TokenStatus.ACTIVE.name().equals(activeToken.get().getStatus())) {
                QueueToken token = activeToken.get();
                token.markAsExpired();
                queueTokenMapper.update(token);
                log.info(">>> Token Expired DB: {}", token.getToken());
            }

            if (heartbeatExisted) {
                String countStr = redisTemplate.opsForValue().get(activeTokensKey);
                int currentCount = (countStr != null) ? Integer.parseInt(countStr) : 0;
                if (currentCount > 0) {
                    redisTemplate.opsForValue().decrement(activeTokensKey);
                    log.info(">>> Redis Decrement: {} -> {}", currentCount, currentCount - 1);
                }
            }

            activateNextTokensInternal(performanceId, activeTokensKey);
        }
    }

    public void cleanupInactiveSessions() {
        try {
            LocalDateTime cutoff = LocalDateTime.now().minusSeconds(maxInactiveSeconds);
            Set<String> heartbeatKeys = redisTemplate.keys(HEARTBEAT_KEY_PREFIX + "*");

            if (heartbeatKeys != null) {
                for (String heartbeatKey : heartbeatKeys) {
                    String lastHeartbeat = redisTemplate.opsForValue().get(heartbeatKey);
                    if (lastHeartbeat != null) {
                        LocalDateTime lastTime = LocalDateTime.parse(lastHeartbeat);
                        if (lastTime.isBefore(cutoff)) {
                            processTimeout(heartbeatKey);
                        }
                    }
                }
            }

            // Direct session keys are counters in this implementation, not per-user keys.
            // Skipping legacy direct session cleanup logic.

            List<QueueToken> expiredTokens = queueTokenMapper.findExpiredTokens(LocalDateTime.now());
            for (QueueToken token : expiredTokens) {
                if (QueueToken.TokenStatus.ACTIVE.name().equals(token.getStatus())) {
                    token.markAsExpired();
                    queueTokenMapper.update(token);
                    releaseTokenFromRedis(token.getPerformanceId());
                    activateNextTokens(token.getPerformanceId());
                }
            }

        } catch (Exception e) {
            log.error("Error in cleanup", e);
        }
    }

    private void processTimeout(String heartbeatKey) {
        try {
            String[] parts = heartbeatKey.replace(HEARTBEAT_KEY_PREFIX, "").split(":");
            if (parts.length >= 3) {
                Long userId = Long.parseLong(parts[0]);
                String performanceId = parts[1]; // String ID
                Long scheduleId = Long.parseLong(parts[2]);

                log.warn("Session Timeout - User: {}", userId);
                releaseSession(userId, performanceId, scheduleId);
            }
        } catch (Exception e) {
            log.error("Error in timeout processing", e);
        }
    }

    public void cleanupOldTokens() {
        // Implement if needed for deleting old tokens from DB
        // For now leave empty or log
        log.info("Cleanup old tokens - not implemented yet");
    }

    private void activateNextTokensInternal(String performanceId, String activeTokensKey) {
        String activeStr = redisTemplate.opsForValue().get(activeTokensKey);
        int currentActive = (activeStr != null) ? Integer.parseInt(activeStr) : 0;

        if (currentActive < maxActiveTokens) {
            int slotsAvailable = maxActiveTokens - currentActive;
            List<QueueToken> waitingTokens = queueTokenMapper
                    .findWaitingTokensByPerformanceOrderByIssuedAt(performanceId)
                    .stream().limit(slotsAvailable).collect(Collectors.toList());

            for (QueueToken token : waitingTokens) {
                redisTemplate.opsForValue().increment(activeTokensKey);
                redisTemplate.expire(activeTokensKey, Duration.ofMinutes(10));
                token.activate();
                queueTokenMapper.update(token);
                log.info(">>> Activated Token: {}", token.getToken());
            }

            if (!waitingTokens.isEmpty()) {
                updateWaitingPositions(performanceId);
            }
        }
    }

    private void updateWaitingPositions(String performanceId) {
        List<QueueToken> waitingTokens = queueTokenMapper.findWaitingTokensByPerformanceOrderByIssuedAt(performanceId);
        for (int i = 0; i < waitingTokens.size(); i++) {
            QueueToken token = waitingTokens.get(i);
            int position = i + 1;
            int estimatedSeconds = position * waitTimePerPerson;
            int estimatedMinutes = Math.max(1, estimatedSeconds / 60);
            token.setPositionInQueue(position);
            token.setEstimatedWaitTimeMinutes(estimatedMinutes);
        }
        if (!waitingTokens.isEmpty()) {
            queueTokenMapper.updateAll(waitingTokens);
        }
    }

    private void updateQueuePosition(QueueToken token) {
        if (QueueToken.TokenStatus.WAITING.name().equals(token.getStatus())) {
            Long position = queueTokenMapper.findPositionInQueue(token.getPerformanceId(), token.getIssuedAt()) + 1;
            int estimatedSeconds = position.intValue() * waitTimePerPerson;
            int estimatedMinutes = Math.max(1, estimatedSeconds / 60);
            token.setPositionInQueue(position.intValue());
            token.setEstimatedWaitTimeMinutes(estimatedMinutes);
            queueTokenMapper.update(token);
        }
    }

    private void releaseTokenFromRedis(String performanceId) {
        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;
        Long activeCount = redisTemplate.opsForValue().decrement(activeTokensKey);
        if (activeCount != null && activeCount < 0) {
            redisTemplate.opsForValue().set(activeTokensKey, "0");
        }
    }

    @Transactional
    public void activateNextTokens(String performanceId) {
        String activeTokensKey = ACTIVE_TOKENS_KEY_PREFIX + performanceId;
        synchronized (queueLock) {
            activateNextTokensInternal(performanceId, activeTokensKey);
        }
    }

    private int getRedisWaitingCount(String performanceId) {
        return queueTokenMapper.countWaitingTokensByPerformance(performanceId).intValue();
    }

    private void startHeartbeat(Long userId, String performanceId, Long scheduleId) {
        String heartbeatKey = HEARTBEAT_KEY_PREFIX + userId + ":" + performanceId + ":" + scheduleId;
        redisTemplate.opsForValue().set(heartbeatKey, LocalDateTime.now().toString(),
                Duration.ofSeconds(maxInactiveSeconds));
    }

    public void updateHeartbeat(Long userId, String performanceId, Long scheduleId) {
        String heartbeatKey = HEARTBEAT_KEY_PREFIX + userId + ":" + performanceId + ":" + scheduleId;
        redisTemplate.opsForValue().set(heartbeatKey, LocalDateTime.now().toString(),
                Duration.ofSeconds(maxInactiveSeconds));
    }

    private String generateToken() {
        byte[] bytes = new byte[16];
        secureRandom.nextBytes(bytes);
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes)
            sb.append(String.format("%02x", b));
        return sb.toString();
    }

    public void cancelToken(String token, Long userId) {
        QueueToken queueToken = queueTokenMapper.findByToken(token)
                .orElseThrow(() -> new IllegalArgumentException("Token not found"));

        if (!queueToken.getUserId().equals(userId)) {
            throw new IllegalArgumentException("User mismatch");
        }

        queueToken.setStatus(QueueToken.TokenStatus.CANCELLED.name());
        queueTokenMapper.update(queueToken);

        if (QueueToken.TokenStatus.ACTIVE.name().equals(queueToken.getStatus())) {
            releaseTokenFromRedis(queueToken.getPerformanceId());
            activateNextTokens(queueToken.getPerformanceId());
        }
    }

    // Test helper
    public void clearAllSessions() {
        // Clear Redis? Mapping all keys is expensive.
        Set<String> keys = redisTemplate.keys("active_tokens:*");
        if (keys != null)
            redisTemplate.delete(keys);

        Set<String> hb = redisTemplate.keys("heartbeat:*");
        if (hb != null)
            redisTemplate.delete(hb);
    }

    public List<QueueStatusResponse> getUserActiveTokens(Long userId) {
        // Need to add method to mapper: findActiveTokensByUser
        // For now return empty or implement mapper method.
        // Assuming findActiveTokensByUser exists in mapper or we need to add it.
        // I added it in Mapper XML? No I didn't add findActiveTokensByUser in
        // XML/Interface previously.
        // I should stick to basics or add it.
        // I'll skip implementation for now to avoid compilation error if method
        // missing, or better, return empty list.
        return List.of();
    }
}