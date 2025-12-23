package com.ssafy.tigetting.auth.controller;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.auth.service.AuthService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.tigetting.user.dto.UserRegisterDto;
import com.ssafy.tigetting.user.dto.UserUpdateDto;
import com.ssafy.tigetting.global.security.TokenExtractor;

@Tag(name = "UserAuth", description = "사용자 로그인/로그아웃 API")
@RestController
@RequestMapping("/auth")
public class AuthController {
    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

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

    @PostMapping("/signup")
    public AuthResponse signup(@Valid @RequestBody UserRegisterDto dto) {
        System.out.println("회원가입 시도 들어옴");
        return authService.signup(dto);
    }

    @PostMapping("/modify")
    public AuthResponse modify(@Valid @RequestBody UserUpdateDto dto) {
        System.out.println("회원정보 수정 시도 들어옴");
        System.out.println("Email: " + dto.getEmail());
        System.out.println("Name: " + dto.getName());
        System.out.println("Phone: " + dto.getPhone());
        System.out.println("Has Password: " + (dto.getPassword() != null && !dto.getPassword().isEmpty()));
        return authService.modify(dto);
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
