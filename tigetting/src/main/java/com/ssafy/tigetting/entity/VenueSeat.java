package com.ssafy.tigetting.entity;

import com.ssafy.tigetting.venue.entity.Venue;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VenueSeat {

    private Long venueSeatId;

    private Venue venue;

    private String seatRow;

    private String seatNumber;

    private String seatZone;

    private SeatGrade seatGrade;

    private LocalDateTime createdAt;

    private List<ScheduleSeat> scheduleSeats;

    public enum SeatGrade {
        VIP, R, S, A
    }
}