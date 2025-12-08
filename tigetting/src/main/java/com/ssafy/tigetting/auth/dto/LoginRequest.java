package com.ssafy.tigetting.auth.dto;

import jakarta.validation.constraints.NotBlank;

public class LoginRequest {
    @NotBlank(message = "이메일 또는 사용자명을 입력해주세요")
    private String usernameOrEmail;  // 이메일 또는 username 둘 다 받기
    @NotBlank(message = "비밀번호를 입력해주세요")
    private String password;

    public LoginRequest() { }
    public LoginRequest(String usernameOrEmail, String password) {
        this.usernameOrEmail = usernameOrEmail;
        this.password = password;
    }

    public String getUsernameOrEmail() { return usernameOrEmail; }
    public void setUsernameOrEmail(String usernameOrEmail) { this.usernameOrEmail = usernameOrEmail; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
