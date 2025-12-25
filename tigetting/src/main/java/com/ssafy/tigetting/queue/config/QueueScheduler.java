package com.ssafy.tigetting.queue.config;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import com.ssafy.tigetting.queue.service.QueueService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Slf4j
public class QueueScheduler {

    private final QueueService queueService;

    /**
     * 30초마다 대기열 처리 (비활성 세션 정리 등)
     */
    @Scheduled(fixedRate = 30000)
    public void processQueue() {
        try {
            // log.debug("Queue processing started");
            queueService.cleanupInactiveSessions();
            // log.debug("Queue processing finished");
        } catch (Exception e) {
            log.error("Error processing queue", e);
        }
    }

    /**
     * 1시간마다 오래된 토큰 정리
     */
    @Scheduled(fixedRate = 3600000)
    public void cleanupOldTokens() {
        try {
            log.info("Cleanup old tokens started");
            queueService.cleanupOldTokens();
            log.info("Cleanup old tokens finished");
        } catch (Exception e) {
            log.error("Error cleaning old tokens", e);
        }
    }
}
