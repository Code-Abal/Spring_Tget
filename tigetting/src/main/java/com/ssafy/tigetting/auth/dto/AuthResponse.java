package com.ssafy.tigetting.auth.dto;

import com.ssafy.tigetting.dto.tget.UserDto;

public class AuthResponse {
    private String accessToken;
    private String roleType; // USER 또는 ADMIN
    private UserDto userInfo; // 사용자 상세 정보

    public AuthResponse() {
    }

    public AuthResponse(String accessToken) {
        this.accessToken = accessToken;
    }

    public AuthResponse(String accessToken, String roleType) {
        this.accessToken = accessToken;
        this.roleType = roleType;
    }

    public AuthResponse(String accessToken, String roleType, UserDto userInfo) {
        this.accessToken = accessToken;
        this.roleType = roleType;
        this.userInfo = userInfo;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getroleType() {
        return roleType;
    }

    public void setroleType(String roleType) {
        this.roleType = roleType;
    }

    public UserDto getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserDto userInfo) {
        this.userInfo = userInfo;
    }
}
