package com.ssafy.tigetting.entity;

import com.ssafy.tigetting.venue.entity.Venue;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Performance {

    private Long performanceId;

    private Venue venue;

    private String title;

    private String description;

    private String theme;

    private String posterUrl;

    private LocalDate startDate;

    private LocalDate endDate;

    @Builder.Default
    private Integer runningTime = 0;

    @Builder.Default
    private BigDecimal basePrice = BigDecimal.ZERO;

    @Builder.Default
    private PerformanceStatus status = PerformanceStatus.UPCOMING;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<PerformanceSchedule> schedules;
    //private List<PerformanceUrl> schedules;

    public enum PerformanceStatus {
        UPCOMING, ONGOING, ENDED, CANCELLED
    }
}