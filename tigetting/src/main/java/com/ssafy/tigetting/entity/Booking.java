package com.ssafy.tigetting.entity;

import com.ssafy.tigetting.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Booking {

    private Long bookingId;

    private String bookingNumber;

    private User user;

    private PerformanceSchedule schedule;

    @Builder.Default
    private Integer seatCount = 0;

    @Builder.Default
    private BigDecimal totalAmount = BigDecimal.ZERO;

    @Builder.Default
    private BookingStatus status = BookingStatus.PENDING;

    private LocalDateTime expiresAt;

    private LocalDateTime bookedAt;

    private LocalDateTime cancelledAt;

    private String cancellationReason;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<BookingSeat> bookingSeats;

    private List<Payment> payments;

    private List<Refund> refunds;

    public enum BookingStatus {
        PENDING, CONFIRMED, CANCELLED
    }
}