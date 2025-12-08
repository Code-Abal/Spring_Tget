package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 회원 공연 내역 테이블 Entity
 * 테이블명: users_performances
 * 
 * 주의: 현재 스키마는 PK가 userid만 되어있으나, 복합키(userid, mt20id) 권장
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserPerformanceEntity {

    private Integer userId; // 사용자 ID (FK -> users)
    private String mt20id; // 공연 ID (FK -> performances)
}
