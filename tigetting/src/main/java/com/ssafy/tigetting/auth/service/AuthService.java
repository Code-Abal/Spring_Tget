package com.ssafy.tigetting.auth.service;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.user.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Map;

@Service
public class AuthService {

    private final AuthenticationManager authenticationManager;
    private final JwtUtil jwtUtil;
    private final UserService userService;

    public AuthService(AuthenticationManager authenticationManager, JwtUtil jwtUtil, UserService userService) {
        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
        this.userService = userService;
    }

    public AuthResponse login(LoginRequest dto) {
        String username = userService.resolveUsernameFromEmailOrUsername(dto.getUsernameOrEmail());

        Authentication auth = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(username, dto.getPassword())
        );

        String token = jwtUtil.generate(auth.getName());
        String role = userService.getUserRole(username);

        return new AuthResponse(token, role);
    }

    /* *
     * 일반 사용자 로그아웃
     * */
    public ResponseEntity<?> logout(HttpServletRequest request, Authentication auth) {
        String username = auth != null ? auth.getName() : "anonymous";

        // Authorization 헤더에서 토큰 추출
        String authHeader = request.getHeader("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            String token = authHeader.substring(7);

            try {
                // 토큰 만료 시간 가져오기
                long expirationTime = jwtUtil.extractClaims(token).getExpiration().getTime();
                long timeLeft = (expirationTime - System.currentTimeMillis()) / 1000 / 60; // 분 단위

                return ResponseEntity.ok(Map.of(
                        "message", "로그아웃 완료",
                        "username", username,
                        "tokenTimeLeft", timeLeft + "분",
                        "timestamp", LocalDateTime.now(),
                        "success", true
                ));
            } catch (Exception e) {
                return ResponseEntity.badRequest().body(Map.of(
                        "error", "토큰 처리 중 오류 발생",
                        "message", e.getMessage(),
                        "username", username,
                        "success", false
                ));
            }
        }

        return ResponseEntity.ok(Map.of(
                "message", "로그아웃 완료",
                "username", username,
                "timestamp", LocalDateTime.now(),
                "success", true
        ));
    }
}