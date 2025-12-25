package com.ssafy.tigetting.auth.controller;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.auth.service.AuthService;
import com.ssafy.tigetting.email.service.EmailService;
import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.user.dto.UserUpdateRequest;
import com.ssafy.tigetting.user.dto.UserUpdateResponse;
import com.ssafy.tigetting.user.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import com.ssafy.tigetting.user.dto.UserRegisterDto;
import com.ssafy.tigetting.global.security.TokenExtractor;

@Tag(name = "UserAuth", description = "사용자 로그인/로그아웃 API")
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
    private final AuthService authService;
    private final UserService userService;
    private final JwtUtil jwtUtil;
    private final EmailService emailService;

    @Operation(summary = "사용자 로그인", description = "이메일과 비밀번호를 사용해 로그인합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "로그인 성공", content = @Content(schema = @Schema(implementation = AuthResponse.class))),
            @ApiResponse(responseCode = "401", description = "인증 실패 (잘못된 이메일 또는 비밀번호)")
    })
    @PostMapping("/login")
    public AuthResponse login(@Valid @RequestBody LoginRequest dto) {
        System.out.println("로그인 시도 들어옴");
        return authService.login(dto);
    }

    @Operation(summary = "사용자 회원가입", description = "새로운 사용자 계정을 생성합니다. 이메일 인증이 필요합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "회원가입 성공", content = @Content(schema = @Schema(implementation = AuthResponse.class))),
            @ApiResponse(responseCode = "400", description = "잘못된 요청 (이메일 중복, 유효성 검사 실패 등)")
    })
    @PostMapping("/signup")
    public AuthResponse signup(@Valid @RequestBody UserRegisterDto dto) {
        System.out.println("회원가입 시도 들어옴");
        return authService.signup(dto);
    }

    @Operation(summary = "이메일 인증 코드 발송", description = "회원가입을 위한 이메일 인증 코드를 발송합니다.")
    @PostMapping("/send-verification")
    public ResponseEntity<Map<String, Object>> sendVerificationCode(@RequestBody Map<String, String> request) {
        String email = request.get("email");
        
        if (email == null || email.trim().isEmpty()) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", "이메일을 입력해주세요."
            ));
        }

        try {
            emailService.sendVerificationEmail(email);
            
            Map<String, Object> response = new HashMap<>();
            response.put("success", true);
            response.put("message", "인증 코드가 이메일로 발송되었습니다.");
            response.put("expiryMinutes", 5);
            
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(Map.of(
                "success", false,
                "message", "이메일 발송에 실패했습니다. 다시 시도해주세요."
            ));
        }
    }

    @Operation(summary = "이메일 인증 코드 검증", description = "이메일로 받은 인증 코드를 검증합니다.")
    @PostMapping("/verify-code")
    public ResponseEntity<Map<String, Object>> verifyCode(@RequestBody Map<String, String> request) {
        String email = request.get("email");
        String code = request.get("code");
        
        if (email == null || code == null) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", "이메일과 인증 코드를 입력해주세요."
            ));
        }

        boolean isValid = emailService.verifyCode(email, code);
        
        if (isValid) {
            return ResponseEntity.ok(Map.of(
                "success", true,
                "message", "이메일 인증이 완료되었습니다."
            ));
        } else {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", "인증 코드가 일치하지 않거나 만료되었습니다."
            ));
        }
    }

    @Operation(summary = "회원정보 수정", description = "사용자 정보(이름, 전화번호, 비밀번호)를 수정합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "회원정보 수정 성공"),
            @ApiResponse(responseCode = "400", description = "현재 비밀번호 불일치"),
            @ApiResponse(responseCode = "401", description = "인증 실패")
    })
    @PostMapping("/modify")
    public ResponseEntity<UserUpdateResponse> modifyUserInfo(
            @RequestHeader("Authorization") String authHeader,
            @Valid @RequestBody UserUpdateRequest request) {
        
        // JWT 토큰에서 이메일 추출
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        
        // 회원정보 수정
        UserUpdateResponse response = userService.updateUserInfo(email, request);
        
        return ResponseEntity.ok(response);
    }

    @Operation(summary = "사용자 로그아웃", description = "JWT 토큰을 기반으로 사용자 로그아웃을 수행합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "로그아웃 성공"),
            @ApiResponse(responseCode = "400", description = "잘못된 토큰 형식 또는 처리 오류"),
            @ApiResponse(responseCode = "401", description = "JWT 인증 필요")
    })
    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpServletRequest request, Authentication authentication) {
        String token = TokenExtractor.extract(request);
        Map<String, Object> result = authService.logout(token, authentication);

        return ResponseEntity.ok(result);
    }
}
