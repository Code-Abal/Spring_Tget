package com.ssafy.tigetting.email.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmailVerification {
    private String email;
    private String verificationCode;
    private LocalDateTime expiryTime;
    private Boolean verified;
    private LocalDateTime createdAt;
}
