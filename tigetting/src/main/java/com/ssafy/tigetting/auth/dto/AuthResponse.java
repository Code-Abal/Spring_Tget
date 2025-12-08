package com.ssafy.tigetting.auth.dto;

public class AuthResponse {
    private String accessToken;
    private String roleType;  // USER 또는 ADMIN

    public AuthResponse() { }
    public AuthResponse(String accessToken) {
        this.accessToken = accessToken;
    }
    public AuthResponse(String accessToken, String roleType) {
        this.accessToken = accessToken;
        this.roleType = roleType;
    }

    public String getAccessToken() { return accessToken; }
    public void setAccessToken(String accessToken) { this.accessToken = accessToken; }
    public String getroleType() { return roleType; }
    public void setroleType(String roleType) { this.roleType = roleType; }
}
