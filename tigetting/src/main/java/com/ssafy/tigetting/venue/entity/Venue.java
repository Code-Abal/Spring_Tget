package com.ssafy.tigetting.venue.entity;

import com.ssafy.tigetting.entity.Performance;
import com.ssafy.tigetting.entity.VenueSeat;
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
public class Venue {

    private Long venueId;

    private String venueName;

    private String address;

    private String description;

    @Builder.Default
    private Integer totalCapacity = 1;

    private String contact;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<Performance> performances;

    private List<VenueSeat> venueSeats;
}