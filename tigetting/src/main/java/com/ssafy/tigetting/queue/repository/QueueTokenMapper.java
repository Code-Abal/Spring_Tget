package com.ssafy.tigetting.queue.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.ssafy.tigetting.queue.entity.QueueToken;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Mapper
public interface QueueTokenMapper {

    void save(QueueToken queueToken);

    void update(QueueToken queueToken);

    Optional<QueueToken> findByToken(String token);

    Optional<QueueToken> findActiveTokenByUserAndPerformance(@Param("userId") Long userId,
            @Param("performanceId") String performanceId);

    List<QueueToken> findWaitingTokensByPerformance(@Param("performanceId") String performanceId);

    Long findPositionInQueue(@Param("performanceId") String performanceId, @Param("issuedAt") LocalDateTime issuedAt);

    Long countActiveTokensByPerformanceId(@Param("performanceId") String performanceId);

    Long countWaitingTokensByPerformance(@Param("performanceId") String performanceId);

    List<QueueToken> findExpiredTokens(@Param("now") LocalDateTime now);

    void updateAll(@Param("tokens") List<QueueToken> tokens);

    List<QueueToken> findWaitingTokensByPerformanceOrderByIssuedAt(@Param("performanceId") String performanceId);
}
