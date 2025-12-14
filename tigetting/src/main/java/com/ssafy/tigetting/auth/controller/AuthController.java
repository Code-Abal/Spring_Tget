package com.ssafy.tigetting.auth.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.auth.service.AuthService;
import com.ssafy.tigetting.dto.tget.UserRegisterDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@RestController
@RequestMapping("/auth")
public class AuthController {
    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public AuthResponse login(@Valid @RequestBody LoginRequest dto) {
        System.out.println("로그인시도 들어옴");
        return authService.login(dto);
    }

    @PostMapping("/signup")
    public AuthResponse signup(@Valid @RequestBody UserRegisterDto dto) {
        System.out.println("회원가입 시도 들어옴");
        return authService.signup(dto);
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpServletRequest request, Authentication auth) {
        return authService.logout(request, auth);
    }
}
