package com.ssafy.tigetting.entity.tget;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserEntity {

    private Integer userId; // 사용자 ID (PK, AUTO_INCREMENT)

    private String email; // 이메일

    private String password; // 비밀번호 (Spring에서 encoding 처리)

    private String name; // 이름

    private String phone; // 전화번호

    private Role role; // 권한 ID (FK -> roles)

    private LocalDateTime register; // 가입일

    public enum Role {
        USER, ADMIN
    }
}
