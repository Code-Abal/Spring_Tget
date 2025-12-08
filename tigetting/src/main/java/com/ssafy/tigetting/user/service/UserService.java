package com.ssafy.tigetting.user.service;

import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.user.entity.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserMapper userMapper;

    public UserService(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public String resolveUsernameFromEmailOrUsername(String usernameOrEmail) {
        if (usernameOrEmail.contains("@")) {
            // 이메일로 사용자 찾기
            User user = userMapper.findByEmail(usernameOrEmail)
                    .orElseThrow(() -> new UsernameNotFoundException("해당 이메일의 사용자를 찾을 수 없습니다: " + usernameOrEmail));

            return user.getRole().getRoleName();
        } else {
            User user = userMapper.findByUsername(usernameOrEmail)
                    .orElseThrow(() -> new UsernameNotFoundException("해당 사용자명을 찾을 수 없습니다: " + usernameOrEmail));
            return user.getRole().getRoleName();
        }
    }

    /**
     * 사용자 역할 정보 반환
     */
    public String getUserRole(String email) {
    User user = userMapper.findByEmail(email)
            .orElseThrow(() ->
                    new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + email)
            );

    return user.getRole().getRoleName();
}

    /**
     * 사용자 정보 조회
     */
    public User findByUsername(String username) {
        return userMapper.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + username));
    }

    /**
     * 이메일로 사용자 정보 조회
     */
    public User findByEmail(String email) {
        return userMapper.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("해당 이메일의 사용자를 찾을 수 없습니다: " + email));
    }
}