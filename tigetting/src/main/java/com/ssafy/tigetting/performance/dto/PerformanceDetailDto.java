package com.ssafy.tigetting.performance.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

/*
 * PerformanceDto에 DetailDto도 포함해서 1개로 통합해도 되는데
 * API설계나 성능최적화 측면에서는 분리하는 게 좋다.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceDetailDto {

    // 공연 기본 정보
    private String mt20id;
    private String prfnm;
    
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate prfpdfrom;
    
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate prfpdto;
    
    private String fcltynm;
    private String poster;
    private String area;
    private String genreName;
    private String prfstate;
    private String mt10id;

    // 공연 상세 정보
    private String prfcast; // 출연진
    private String prfcrew; // 제작진
    private String prfruntime; // 공연시간
    private String prfage; // 관람 연령
    private String pcseguidance; // 가격 정보
    private String sty; // 줄거리
    
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate updatedate; // 최종 수정일
    
    private String dtguidance; // 공연 시간 안내

    // 스틸 이미지 목록
    private List<String> styurls;
}
