package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VenueDetailEntity {

    private String mt10id; // 공연장 ID (PK, FK -> venues)

    private String adres; // 주소

    private String telno; // 전화번호

    private BigDecimal la; // 위도

    private BigDecimal lo; // 경도

    private Integer seatscale; // 좌석수
}
