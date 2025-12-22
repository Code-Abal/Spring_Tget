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

    private String venueId;  // mt10id (String)

    private String venueName;  // fcltynm

    private String address;

    private String description;

    @Builder.Default
    private Integer totalCapacity = 1;

    private String contact;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    // KOPIS venues 테이블 필드
    private String mt10id;
    private String fcltynm;
    private String mt13cnt;
    private String fcltychartr;
    private String sidonm;
    private String gugunnm;

    private List<Performance> performances;

    private List<VenueSeat> venueSeats;
}