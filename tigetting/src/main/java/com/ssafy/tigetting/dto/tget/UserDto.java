package com.ssafy.tigetting.dto.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * 사용자 정보 조회용 DTO
 * - password 필드 제외 (보안)
 * - roleName 포함 (roleId 대신)
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto {

    private Integer userId; // 사용자 ID

    private String email; // 이메일

    private String name; // 이름

    private String phone; // 전화번호

    private Role role; // 권한명 (roleId 대신)

    private LocalDateTime register; // 가입일

    public enum Role {
        USER, ADMIN
    }
}
