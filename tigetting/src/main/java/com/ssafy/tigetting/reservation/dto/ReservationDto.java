package com.ssafy.tigetting.reservation.dto;

import java.util.List;

import lombok.Data;

@Data
public class ReservationDto {
    private String performanceId;
    private Integer scheduleId;
    private String token; // Queue token
    private List<SeatDto> seats;

    @Data
    public static class SeatDto {
        private String section;
        private String row;
        private String number;
        private Integer price;
    }
}
