package com.ssafy.tigetting.recommendation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Claude API 응답 DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AIRecommendationResponse {
    private List<String> recommendations; // mt20id 리스트
    private String reason; // 추천 이유 (선택사항)
}
