package com.ssafy.tigetting.recommendation.dto;

import lombok.Data;

/**
 * 사용자 예매 이력 DTO
 */
@Data
public class UserBookingHistory {
    private String prfnm;
    private String fcltynm;
    private String area;
    private String bookingDate;
    private String viewDate;
    private Integer genreid;
}
