package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 회원 권한 테이블 Entity
 * 테이블명: roles
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RoleEntity {

    /**
     * 권한 ID (PK)
     */
    private Integer roleId;

    /**
     * 권한명
     */
    private String name;
}
