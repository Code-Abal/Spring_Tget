package com.ssafy.tigetting.recommendation.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * DB에 저장되는 AI 추천 결과 Entity
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AIRecommendation {
    private Integer id;
    private Integer genreId; // NULL=home/전체, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극
    private String mt20id;
    private Integer rankOrder;
    private LocalDateTime generatedAt;
}
