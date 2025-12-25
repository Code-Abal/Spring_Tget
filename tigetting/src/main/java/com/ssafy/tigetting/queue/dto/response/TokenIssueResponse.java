package com.ssafy.tigetting.queue.dto.response;

import com.ssafy.tigetting.queue.entity.QueueToken.TokenStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TokenIssueResponse {
    private String token;
    private TokenStatus status;
    private String message;
    private Integer position;
    private Integer waitMinutes;
}
