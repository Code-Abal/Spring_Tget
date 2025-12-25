package com.ssafy.tigetting.recommendation.dto;

import com.ssafy.tigetting.performance.dto.PerformanceDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 페이지 렌더링용 응답 DTO
 * 전체 공연 리스트 + AI 추천 리스트 포함
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PagePerformanceResponse {

    /**
     * 전체 공연 리스트 (장르별 필터링된)
     */
    private List<PerformanceDto> allPerformances;

    /**
     * AI 추천 공연 리스트 (10개)
     */
    private List<PerformanceDto> recommendations;

    /**
     * 추천 타입 (base: 기본 추천, personalized: 개인화 추천)
     */
    private String recommendationType;
}
