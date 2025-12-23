package com.ssafy.tigetting.performance.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

/**
 * 공연 정보 Entity
 * 테이블명: performances
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceEntity {

    private String mt20id; // 공연ID (PK)

    private String prfnm; // 공연명

    private LocalDate prfpdfrom; // 공연 시작일

    private LocalDate prfpdto; // 공연 종료일

    private String fcltynm; // 공연장명

    private String poster; // 포스터 URL

    private String area; // 지역

    private Integer genreid; // 장르id (FK -> genres)

    private String prfstate; // 공연 상태

    private String mt10id; // 공연장id (FK -> venues)
}
