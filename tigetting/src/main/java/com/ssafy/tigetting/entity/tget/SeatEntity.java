package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 공연별 좌석 정보 테이블 Entity
 * 테이블명: seats
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SeatEntity {

    /**
     * 공연 ID (PK, FK -> performances)
     */
    private String mt20id;

    /**
     * 좌석 번호 (FK -> prices)
     */
    private Integer seatId;
}
