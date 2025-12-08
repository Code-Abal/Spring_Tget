package com.ssafy.tigetting.entity;

import com.ssafy.tigetting.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SeatLock {

    private Long lockId;

    private ScheduleSeat seat;

    private User user;

    private String sessionId;

    private LocalDateTime lockedAt;

    private LocalDateTime expiresAt;

    @Builder.Default
    private LockStatus status = LockStatus.ACTIVE;

    private LocalDateTime createdAt;

    public enum LockStatus {
        ACTIVE, EXPIRED, RELEASED
    }
}