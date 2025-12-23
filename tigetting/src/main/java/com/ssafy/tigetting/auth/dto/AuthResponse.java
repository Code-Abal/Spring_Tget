package com.ssafy.tigetting.auth.dto;

import com.ssafy.tigetting.user.dto.UserDto;
import com.ssafy.tigetting.user.entity.UserEntity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@AllArgsConstructor
@Builder
public class AuthResponse {
    private final String accessToken;
    private final String roleType; // USER 또는 ADMIN
    private final UserDto userInfo; // 사용자 상세 정보

    /**
     * 인증 응답 생성 팩토리 메서드
     */
    public static AuthResponse of(UserEntity user, String token) {
        return AuthResponse.builder()
                .accessToken(token)
                .roleType(user.getRole().getName())
                .userInfo(UserDto.from(user))
                .build();
    }

    /**
     * 토큰만 필요한 경우 (선택)
     */
    public static AuthResponse tokenOnly(String token) {
        return AuthResponse.builder()
                .accessToken(token)
                .build();
    }
}
