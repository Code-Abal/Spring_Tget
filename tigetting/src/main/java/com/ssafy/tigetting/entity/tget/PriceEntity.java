package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 좌석 가격 테이블 Entity
 * 테이블명: prices
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PriceEntity {

    private Integer seatId; // 좌석 ID (PK)

    private Integer price; // 가격
}
