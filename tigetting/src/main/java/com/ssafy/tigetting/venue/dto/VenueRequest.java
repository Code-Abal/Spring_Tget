package com.ssafy.tigetting.venue.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Mapper에서 region, genreId 같은 조회 파라미터를 전달하기 위한 DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class VenueRequest {
    private String region;
    private Integer genreId;
}

