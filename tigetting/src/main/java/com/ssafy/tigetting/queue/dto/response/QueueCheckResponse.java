package com.ssafy.tigetting.queue.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QueueCheckResponse {
    private boolean requiresQueue;
    private boolean canProceedDirectly;
    private String sessionId;
    private String message;
    private String reason;
    private Integer currentActiveSessions;
    private Integer maxConcurrentSessions;
    private Integer estimatedWaitTime;
    private Integer currentWaitingCount;
}