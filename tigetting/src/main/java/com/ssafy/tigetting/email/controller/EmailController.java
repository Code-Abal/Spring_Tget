package com.ssafy.tigetting.email.controller;

import com.ssafy.tigetting.email.dto.EmailVerificationRequest;
import com.ssafy.tigetting.email.service.EmailService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Tag(name = "Email", description = "이메일 인증 API")
@Slf4j
@RestController
@RequestMapping("/api/email")
@RequiredArgsConstructor
public class EmailController {

    private final EmailService emailService;

    /**
     * 이메일 인증 코드 발송
     * 
     * POST /api/email/send-code
     * Body: { "email": "user@example.com" }
     */
    @Operation(summary = "이메일 인증 코드 발송",
               description = "회원가입을 위한 이메일 인증 코드를 발송합니다. 유효 시간은 5분입니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "발송 성공"),
            @ApiResponse(responseCode = "400", description = "이메일 누락"),
            @ApiResponse(responseCode = "500", description = "발송 실패")
    })
    @PostMapping("/send-code")
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
            log.error("이메일 발송 실패", e);
            return ResponseEntity.internalServerError().body(Map.of(
                "success", false,
                "message", "이메일 발송에 실패했습니다. 다시 시도해주세요."
            ));
        }
    }

    /**
     * 이메일 인증 코드 검증
     * 
     * POST /api/email/verify-code
     * Body: { "email": "user@example.com", "code": "123456" }
     */
    @Operation(summary = "이메일 인증 코드 검증",
               description = "이메일로 받은 인증 코드를 검증합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "검증 완료 (성공/실패 여부는 응답 본문 참조)"),
            @ApiResponse(responseCode = "400", description = "이메일 또는 코드 누락")
    })
    @PostMapping("/verify-code")
    public ResponseEntity<Map<String, Object>> verifyCode(@RequestBody EmailVerificationRequest request) {
        if (request.getEmail() == null || request.getCode() == null) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", "이메일과 인증 코드를 입력해주세요."
            ));
        }

        boolean isValid = emailService.verifyCode(request.getEmail(), request.getCode());
        
        Map<String, Object> response = new HashMap<>();
        response.put("success", isValid);
        response.put("message", isValid ? "이메일 인증이 완료되었습니다." : "인증 코드가 일치하지 않거나 만료되었습니다.");
        
        return ResponseEntity.ok(response);
    }

    /**
     * 인증 코드 재발송
     * 
     * POST /api/email/resend-code
     * Body: { "email": "user@example.com" }
     */
    @Operation(summary = "인증 코드 재발송",
               description = "만료되거나 받지 못한 경우 인증 코드를 재발송합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "재발송 성공"),
            @ApiResponse(responseCode = "400", description = "이메일 누락"),
            @ApiResponse(responseCode = "500", description = "재발송 실패")
    })
    @PostMapping("/resend-code")
    public ResponseEntity<Map<String, Object>> resendCode(@RequestBody Map<String, String> request) {
        String email = request.get("email");
        
        if (email == null || email.trim().isEmpty()) {
            return ResponseEntity.badRequest().body(Map.of(
                "success", false,
                "message", "이메일을 입력해주세요."
            ));
        }

        try {
            emailService.resendVerificationEmail(email);
            
            Map<String, Object> response = new HashMap<>();
            response.put("success", true);
            response.put("message", "인증 코드가 재발송되었습니다.");
            response.put("expiryMinutes", 5);
            
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            log.error("이메일 재발송 실패", e);
            return ResponseEntity.internalServerError().body(Map.of(
                "success", false,
                "message", "이메일 발송에 실패했습니다. 다시 시도해주세요."
            ));
        }
    }
}
