package com.ssafy.tigetting.venue.dto;

import com.ssafy.tigetting.performance.dto.PerformanceDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 공연장 상세정보 및 공연 목록 응답 DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VenueDetailResponseDto {

    private VenueDto venue;           // 공연장 정보
    private List<PerformanceDto> performances;  // 해당 공연장의 공연 목록
}

