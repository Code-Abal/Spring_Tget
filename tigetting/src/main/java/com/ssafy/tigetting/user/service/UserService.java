package com.ssafy.tigetting.user.service;

import com.ssafy.tigetting.global.exception.AuthException;
import com.ssafy.tigetting.global.exception.ErrorCode;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.user.entity.UserEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserMapper userMapper;

    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    // 이메일로 사용자 찾기
    public UserEntity resolveUserFromEmail(String userEmail) {
        // 이메일로 사용자 찾기
        return userMapper.findByEmail(userEmail)
                .orElseThrow(() -> new AuthException(ErrorCode.USER_NOT_FOUND)); // USER_NOT_FOUND 에러 코드 사용
    }

    /**
     * 사용자 역할 정보 반환
     */
    public String getUserRole(String email) {
        // 이메일로 사용자 정보 찾기
        UserEntity user = userMapper.findByEmail(email)
                .orElseThrow(() -> new AuthException(ErrorCode.USER_NOT_FOUND)); // USER_NOT_FOUND 에러 코드 사용

        return user.getRole().getName();
    }

    /**
     * 사용자 정보 조회
     */
    public UserEntity findByUsername(String username) {
        return userMapper.findByUsername(username)
                .orElseThrow(() -> new AuthException(ErrorCode.USER_NOT_FOUND)); // USER_NOT_FOUND 에러 코드 사용
    }

    /**
     * 이메일로 사용자 정보 조회
     */
    public UserEntity findByEmail(String email) {
        return userMapper.findByEmail(email)
                .orElseThrow(() -> new AuthException(ErrorCode.USER_NOT_FOUND)); // USER_NOT_FOUND 에러 코드 사용
    }
}
