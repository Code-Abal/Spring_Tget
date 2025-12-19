package com.ssafy.tigetting.dto.tget;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 사용자 정보 수정 요청 DTO
 * - 이메일, 이름, 전화번호는 필수
 * - 비밀번호는 선택사항 (변경 시에만)
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserUpdateDto {

    @Email(message = "올바른 이메일 형식이 아닙니다")
    private String email;

    // 현재 비밀번호 (비밀번호 변경 시에만 필요)
    private String currentPassword;

    // 새 비밀번호 (선택사항)
    @Size(min = 8, message = "비밀번호는 최소 8자 이상이어야 합니다")
    private String password;

    private String name;

    @Pattern(regexp = "^01[0-9]-?[0-9]{3,4}-?[0-9]{4}$", message = "올바른 전화번호 형식이 아닙니다")
    private String phone;
}
