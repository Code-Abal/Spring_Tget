package com.ssafy.tigetting.dto.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

/**
 * 공연 목록 조회 응답 DTO
 * Entity -> DTO 변환용
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceDto {

    private String mt20id;
    private String prfnm;
    private LocalDate prfpdfrom;
    private LocalDate prfpdto;
    private String fcltynm;
    private String poster;
    private String area;
    private String genreName;
    private String prfstate;
    private String mt10id;
}
