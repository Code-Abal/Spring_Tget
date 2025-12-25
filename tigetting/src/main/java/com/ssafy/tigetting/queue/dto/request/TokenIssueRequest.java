package com.ssafy.tigetting.queue.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TokenIssueRequest {
    @NotNull(message = "Performance ID is required")
    private String performanceId;

    // Schedule might not be needed for issue but keeping it flexible if needed,
    // but based on controller, issueToken only uses performanceId.
}