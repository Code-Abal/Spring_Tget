package com.ssafy.tigetting.auth.dto;

import jakarta.validation.constraints.NotBlank;

public class LoginRequest {
    @NotBlank(message = "이메일을 입력해주세요")
    private String userEmail;  // 이메일 받기
    @NotBlank(message = "비밀번호를 입력해주세요")
    private String password;

    public LoginRequest() { }
    public LoginRequest(String userEmail, String password) {
        this.userEmail = userEmail;
        this.password = password;
    }

    public String getUserEmail() { return userEmail; }
    public void setUserEmail(String userEmail) { this.userEmail = userEmail; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
