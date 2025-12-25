package com.ssafy.tigetting.queue.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TokenActivateRequest {
    @NotBlank(message = "Token is required")
    private String token;

    @NotNull(message = "Performance ID is required")
    private String performanceId;

    @NotNull(message = "Schedule ID is required")
    private Long scheduleId;
}