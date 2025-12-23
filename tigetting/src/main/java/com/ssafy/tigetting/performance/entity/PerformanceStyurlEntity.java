package com.ssafy.tigetting.performance.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 공연 스틸이미지 테이블 Entity (1:N 관계)
 * 테이블명: performance_styurls
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PerformanceStyurlEntity {

    private String mt20id; // 공연 ID (FK -> performances)
    private String styurl; // 스틸이미지 URL
}
