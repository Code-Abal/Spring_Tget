package com.ssafy.tigetting.user.dto;

import java.time.LocalDateTime;

import com.ssafy.tigetting.user.entity.UserEntity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 사용자 정보 조회용 DTO
 * - password 필드 제외 (보안)
 * - roleName 포함 (roleId 대신)
 */
@Getter
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
        USER, ADMIN, BUSINESS
    }

    public static UserDto from(UserEntity user) {
        return UserDto.builder()
                .userId(user.getUserId())
                .email(user.getEmail())
                .name(user.getName())
                .phone(user.getPhone())
                .role(Role.valueOf(user.getRole().getName()))
                .register(user.getRegister())
                .build();
    }
}
