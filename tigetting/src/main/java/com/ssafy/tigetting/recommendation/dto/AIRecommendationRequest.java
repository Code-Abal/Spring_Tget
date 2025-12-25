package com.ssafy.tigetting.recommendation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Claude API 요청 DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AIRecommendationRequest {
    private List<PerformanceForAI> performances;
    private RecommendationContext context;
    private UserContext userHistory;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class RecommendationContext {
        private Integer pageType; // 0=home, 1=concert, 2=musical, 3=theater, 4=classic
        private int recommendationCount;
        private String currentDate;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class UserContext {
        private List<UserBookingHistory> bookings;
    }
}
