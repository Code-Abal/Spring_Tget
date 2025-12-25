package com.ssafy.tigetting.reservation.dto;

import java.time.LocalDateTime;
import java.util.List;

import com.ssafy.tigetting.reservation.entity.ReservationStatus;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ReservationResponseDto {
    private String reservationId; // Represents the Group ID
    private String performanceId;
    private String performanceTitle;
    private String poster;
    private String facilityName;
    private String area;
    private String performanceDate; // Mocked or Derived
    private String performanceTime; // Mocked or Derived
    private String reservationDate;
    private List<String> seats;
    private Integer totalPrice;
    private ReservationStatus status;
    private String category; // Genre name
}
