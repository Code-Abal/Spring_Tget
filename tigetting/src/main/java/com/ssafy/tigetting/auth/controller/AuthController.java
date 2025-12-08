package com.ssafy.tigetting.auth.controller;

import com.ssafy.tigetting.auth.dto.AuthResponse;
import com.ssafy.tigetting.auth.dto.LoginRequest;
import com.ssafy.tigetting.auth.service.AuthService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthController {
    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/login")
    public AuthResponse login(@Valid @RequestBody LoginRequest dto) {
        return authService.login(dto);
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpServletRequest request, Authentication auth) {
        return authService.logout(request, auth);
    }
}