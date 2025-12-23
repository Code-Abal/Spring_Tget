package com.ssafy.tigetting.performance.dto;

import com.ssafy.tigetting.user.dto.UserDto;
import com.ssafy.tigetting.user.entity.UserEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

/**
 * 공연 목록 조회 응답 DTO
 * Entity -> DTO 변환용
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceDto {

    private String mt20id;
    private String prfnm;
    private LocalDate prfpdfrom;
    private LocalDate prfpdto;
    private String fcltynm;
    private String poster;
    private String area;
    private String genreName;
    private String prfstate;
    private String mt10id;

    public static PerformanceDto build(PerformanceDto performanceDto) {
        PerformanceDto dto = new PerformanceDto();

        dto.setMt20id(performanceDto.getMt20id());
        dto.setPrfnm(performanceDto.getPrfnm());
        dto.setPrfpdfrom(performanceDto.getPrfpdfrom());
        dto.setPrfpdto(performanceDto.getPrfpdto());
        dto.setFcltynm(performanceDto.getFcltynm());
        dto.setPoster(performanceDto.getPoster());
        dto.setArea(performanceDto.getArea());
        dto.setGenreName(performanceDto.getGenreName());
        dto.setPrfstate(performanceDto.getPrfstate());
        dto.setMt10id(performanceDto.getMt10id());

        return dto;
    }
}
