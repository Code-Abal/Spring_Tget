package com.ssafy.tigetting.queue.dto.response;

import com.ssafy.tigetting.queue.entity.QueueToken.TokenStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QueueStatusResponse {
    private String token;
    private TokenStatus status;
    private Integer positionInQueue;
    private Integer estimatedWaitTime;
    private boolean isActiveForBooking;
    private LocalDateTime bookingExpiresAt;
}