package com.ssafy.tigetting.queue.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QueueToken {

    private Long tokenId;
    private String token;
    private Long userId; // Changed from User object
    private String performanceId; // Changed from Performance object, type String
    private String status; // Changed from Enum to String for simpler mapping

    @Builder.Default
    private Integer positionInQueue = 1;

    @Builder.Default
    private Integer estimatedWaitTimeMinutes = 60;

    @Builder.Default
    private LocalDateTime issuedAt = LocalDateTime.now();

    private LocalDateTime expiresAt;
    private LocalDateTime activatedAt;
    private LocalDateTime usedAt;
    private LocalDateTime bookingExpiresAt;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public enum TokenStatus {
        WAITING, // 대기열에서 대기 중
        ACTIVE, // 예매 가능 상태
        USED, // 예매 완료로 사용됨
        EXPIRED, // 시간 만료
        CANCELLED // 사용자가 취소
    }

    // Helper methods to match previous logic (adapted for POJO)

    public void activate() {
        this.status = TokenStatus.ACTIVE.name();
        this.activatedAt = LocalDateTime.now();
        this.bookingExpiresAt = LocalDateTime.now().plusMinutes(10);
        this.positionInQueue = 0;
        this.estimatedWaitTimeMinutes = 0;
    }

    public void markAsUsed() {
        this.status = TokenStatus.USED.name();
        this.usedAt = LocalDateTime.now();
    }

    public void markAsExpired() {
        this.status = TokenStatus.EXPIRED.name();
    }

    public boolean isActiveForBooking() {
        return TokenStatus.ACTIVE.name().equals(this.status) &&
                bookingExpiresAt != null &&
                bookingExpiresAt.isAfter(LocalDateTime.now());
    }

    public boolean isExpired() {
        LocalDateTime now = LocalDateTime.now();
        return (expiresAt != null && now.isAfter(expiresAt)) ||
                (bookingExpiresAt != null && now.isAfter(bookingExpiresAt));
    }
}