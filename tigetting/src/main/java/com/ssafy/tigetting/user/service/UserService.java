package com.ssafy.tigetting.user.service;

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

    public UserEntity resolveUserFromEmail(String userEmail) {
        // 이메일로 사용자 찾기
        UserEntity user = userMapper.findByEmail(userEmail)
                .orElseThrow(() -> new UsernameNotFoundException("해당 이메일의 사용자를 찾을 수 없습니다: " + userEmail));

        return user;
    }

    /**
     * 사용자 역할 정보 반환
     */
    public String getUserRole(String email) {
        UserEntity user = userMapper.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + email));

        return user.getRole().getName();
    }

    /**
     * 사용자 정보 조회
     */
    public UserEntity findByUsername(String username) {
        return userMapper.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + username));
    }

    /**
     * 이메일로 사용자 정보 조회
     */
    public UserEntity findByEmail(String email) {
        return userMapper.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("해당 이메일의 사용자를 찾을 수 없습니다: " + email));
    }
}
