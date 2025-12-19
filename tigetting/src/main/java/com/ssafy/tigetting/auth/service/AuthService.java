package com.ssafy.tigetting.auth.service;

import java.time.LocalDateTime;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.dto.tget.UserDto;
import com.ssafy.tigetting.dto.tget.UserRegisterDto;
import com.ssafy.tigetting.dto.tget.UserUpdateDto;
import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.user.entity.RoleEntity;
import com.ssafy.tigetting.user.entity.UserEntity;
import com.ssafy.tigetting.user.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class AuthService {

    private final AuthenticationManager authenticationManager;
    private final JwtUtil jwtUtil;
    private final UserService userService;
    private final UserMapper userMapper;
    private final PasswordEncoder passwordEncoder;

    public AuthService(AuthenticationManager authenticationManager, JwtUtil jwtUtil, UserService userService,
            UserMapper userMapper, PasswordEncoder passwordEncoder) {
        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
        this.userService = userService;
        this.userMapper = userMapper;
        this.passwordEncoder = passwordEncoder;
    }

    public AuthResponse login(LoginRequest dto) {
        UserEntity user = userService.resolveUserFromEmail(dto.getUserEmail());

        Authentication auth = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(user.getEmail(), dto.getPassword()));

        String token = jwtUtil.generate(auth.getName());

        // UserEntity -> UserDto 변환
        UserDto userDto = UserDto.builder()
                .userId(user.getUserId())
                .email(user.getEmail())
                .name(user.getName())
                .phone(user.getPhone())
                .role(UserDto.Role.valueOf(user.getRole().getName().toUpperCase())) // 대소문자 무시 처리
                .register(user.getRegister())
                .build();

        // 토큰 + 사용자 정보 반환
        return new AuthResponse(token, user.getRole().getName(), userDto);
    }

    /**
     * 회원가입
     * 
     * @param dto 회원가입 정보 (이메일, 비밀번호, 이름, 전화번호)
     * @return 회원가입 후 자동 로그인 토큰
     */
    public AuthResponse signup(UserRegisterDto dto) {
        // 이메일 중복 확인
        if (userMapper.existsByEmail(dto.getEmail())) {
            throw new IllegalArgumentException("이미 가입된 이메일입니다: " + dto.getEmail());
        }

        // 비밀번호 인코딩
        String encodedPassword = passwordEncoder.encode(dto.getPassword());

        // 일반 사용자 권한 설정 (roleId = 2: USER)
        RoleEntity userRole = RoleEntity.builder()
                .roleId(2) // USER 권한
                .name("USER")
                .build();

        // UserEntity 생성
        UserEntity newUser = UserEntity.builder()
                .email(dto.getEmail())
                .password(encodedPassword)
                .name(dto.getName())
                .phone(dto.getPhone())
                .role(userRole)
                .register(LocalDateTime.now())
                .build();

        // DB에 저장
        userMapper.save(newUser);

        // 자동 로그인 처리
        String token = jwtUtil.generate(newUser.getEmail());

        // UserEntity -> UserDto 변환
        UserDto userDto = UserDto.builder()
                .userId(newUser.getUserId())
                .email(newUser.getEmail())
                .name(newUser.getName())
                .phone(newUser.getPhone())
                .role(UserDto.Role.valueOf(newUser.getRole().getName()))
                .register(newUser.getRegister())
                .build();

        return new AuthResponse(token, "USER", userDto);
    }

    /**
     * 회원정보 수정
     * 
     * @param dto 수정할 정보 (이메일, 현재 비밀번호, 새 비밀번호, 이름, 전화번호)
     * @return 수정된 사용자 정보
     */
    @Transactional
    public AuthResponse modify(UserUpdateDto dto) {
        // 이메일로 사용자 조회
        UserEntity existingUser = userService.resolveUserFromEmail(dto.getEmail());
        if (existingUser == null) {
            throw new IllegalArgumentException("존재하지 않는 사용자입니다: " + dto.getEmail());
        }
        
        System.out.println("=== 조회한 사용자 정보 ===");
        System.out.println("User ID: " + existingUser.getUserId());
        System.out.println("Email: " + existingUser.getEmail());
        System.out.println("Name: " + existingUser.getName());

        // 비밀번호 변경하는 경우
        if (dto.getPassword() != null && !dto.getPassword().isEmpty()) {
            // 현재 비밀번호 확인
            if (dto.getCurrentPassword() == null || dto.getCurrentPassword().isEmpty()) {
                throw new IllegalArgumentException("현재 비밀번호를 입력해주세요");
            }
            
            if (!passwordEncoder.matches(dto.getCurrentPassword(), existingUser.getPassword())) {
                throw new IllegalArgumentException("현재 비밀번호가 일치하지 않습니다");
            }

            // 새 비밀번호 인코딩
            existingUser.setPassword(passwordEncoder.encode(dto.getPassword()));
        }

        // 이름, 전화번호 업데이트
        existingUser.setName(dto.getName());
        existingUser.setPhone(dto.getPhone());

        System.out.println("=== DB 업데이트 전 ===");
        System.out.println("User ID: " + existingUser.getUserId());
        System.out.println("Name: " + existingUser.getName());
        System.out.println("Phone: " + existingUser.getPhone());
        System.out.println("Password changed: " + (dto.getPassword() != null && !dto.getPassword().isEmpty()));

        // DB 업데이트
        userMapper.modify(existingUser);
        
        System.out.println("=== DB 업데이트 완료 ===");

        // UserEntity -> UserDto 변환
        UserDto userDto = UserDto.builder()
                .userId(existingUser.getUserId())
                .email(existingUser.getEmail())
                .name(existingUser.getName())
                .phone(existingUser.getPhone())
                .role(UserDto.Role.valueOf(existingUser.getRole().getName()))
                .register(existingUser.getRegister())
                .build();
        // 기존 토큰 그대로 사용 (사용자 정보만 업데이트)
        String token = jwtUtil.generate(existingUser.getEmail());
        
        return new AuthResponse(token, existingUser.getRole().getName(), userDto);
    }

    public ResponseEntity<?> logout(HttpServletRequest request, Authentication auth) {
        String username = auth != null ? auth.getName() : "anonymous";
        System.out.println("로그아웃 들어옴");
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
                        "success", true));
            } catch (Exception e) {
                return ResponseEntity.badRequest().body(Map.of(
                        "error", "토큰 처리 중 오류 발생",
                        "message", e.getMessage(),
                        "username", username,
                        "success", false));
            }
        }

        return ResponseEntity.ok(Map.of(
                "message", "로그아웃 완료",
                "username", username,
                "timestamp", LocalDateTime.now(),
                "success", true));
    }
}