package com.ssafy.tigetting.performance.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

/**
 * 공연 상세 정보 테이블 Entity (1:1 관계)
 * 테이블명: performance_details
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceDetailEntity {

    private String mt20id; // 공연 ID (PK, FK -> performances)

    private String prfcast; // 출연진

    private String prfcrew; // 제작진

    private String prfruntime; // 런타임

    private String prfage; // 관람 연령

    private String pcseguidance; // 가격 정보

    private String sty; // 줄거리

    private LocalDate updatedate; // 최종 수정일

    private String dtguidance; // 공연 시간 안내
}
