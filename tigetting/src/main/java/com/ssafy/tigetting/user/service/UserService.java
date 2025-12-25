package com.ssafy.tigetting.user.service;

import com.ssafy.tigetting.global.exception.AuthException;
import com.ssafy.tigetting.global.exception.ErrorCode;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.user.dto.UserUpdateRequest;
import com.ssafy.tigetting.user.dto.UserUpdateResponse;
import com.ssafy.tigetting.user.entity.UserEntity;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;
    private final PasswordEncoder passwordEncoder;

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

    /**
     * 회원정보 수정
     */
    @Transactional
    public UserUpdateResponse updateUserInfo(String email, UserUpdateRequest request) {
        // 1. 사용자 조회
        UserEntity user = userMapper.findByEmail(email)
                .orElseThrow(() -> new AuthException(ErrorCode.USER_NOT_FOUND));

        // 2. 비밀번호 변경이 필요한 경우
        if (request.getPassword() != null && !request.getPassword().isEmpty()) {
            // 현재 비밀번호 확인
            if (request.getCurrentPassword() == null || request.getCurrentPassword().isEmpty()) {
                throw new AuthException(ErrorCode.INVALID_PASSWORD);
            }

            // 현재 비밀번호가 일치하는지 확인
            if (!passwordEncoder.matches(request.getCurrentPassword(), user.getPassword())) {
                throw new AuthException(ErrorCode.INVALID_PASSWORD);
            }

            // 새 비밀번호 암호화
            String encodedPassword = passwordEncoder.encode(request.getPassword());
            user.setPassword(encodedPassword);
        }

        // 3. 기본 정보 업데이트
        user.setName(request.getName());
        user.setPhone(request.getPhone());

        // 4. DB 업데이트
        userMapper.updateUser(user);

        // 5. 응답 생성
        return new UserUpdateResponse(
                "회원정보가 수정되었습니다",
                user.getEmail(),
                user.getName(),
                user.getPhone()
        );
    }
}
