package com.ssafy.tigetting.dto.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * 공연장 정보 조회 응답 DTO
 * VenueEntity + VenueDetailEntity 결합
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VenueDto {

    private String mt10id; // 공연장 id

    private String fcltynm; // 공연장명

    private Integer mt13cnt; // 공연장 내 공연장 수

    private String fcltychartr; // 시설 특성

    private String sidonm; // 시도명

    private String gugunnm; // 구군명

    private String adres; // 주소

    private String telno; // 전화번호

    private BigDecimal la; // 위도

    private BigDecimal lo; // 경도

    private Integer seatscale; // 좌석수
}
