package com.ssafy.tigetting.queue.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QueueStatsResponse {
    private Long performanceId;
    private Integer activeCount;
    private Integer waitingCount;
    private Integer maxActive;
}