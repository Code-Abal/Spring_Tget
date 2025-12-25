package com.ssafy.tigetting.recommendation.dto;

import lombok.Data;

/**
 * AI에게 전달할 공연 정보 DTO
 */
@Data
public class PerformanceForAI {
    private String mt20id;
    private String prfnm;
    private Integer genreid;
    private String prfstate;
    private String prfpdfrom;
    private String prfpdto;
    private String area;
    private String fcltynm;
    private String prfcast;
}
