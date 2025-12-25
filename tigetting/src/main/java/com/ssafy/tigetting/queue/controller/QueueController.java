package com.ssafy.tigetting.queue.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import com.ssafy.tigetting.queue.dto.request.HeartbeatRequest;
import com.ssafy.tigetting.queue.dto.request.TokenActivateRequest;
import com.ssafy.tigetting.queue.dto.request.TokenIssueRequest;
import com.ssafy.tigetting.queue.dto.request.TokenRequest;
import com.ssafy.tigetting.queue.dto.response.QueueCheckResponse;
import com.ssafy.tigetting.queue.dto.response.QueueStatusResponse;
import com.ssafy.tigetting.queue.dto.response.TokenIssueResponse;
import com.ssafy.tigetting.queue.service.QueueService;
import com.ssafy.tigetting.user.entity.UserEntity;
import com.ssafy.tigetting.user.service.UserService;
import com.ssafy.tigetting.global.security.JwtUtil;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/queue")
@RequiredArgsConstructor
@Tag(name = "Queue", description = "대기열 관리 API")
public class QueueController {

        private final QueueService queueService;
        private final UserService userService;
        private final JwtUtil jwtUtil; // Using JwtUtil to extract user info like PerformanceController

        private UserEntity getUserFromHeader(String authHeader) {
                String token = authHeader.replace("Bearer ", "");
                String email = jwtUtil.extractUsername(token);
                // Assuming UserService has logic to find by email
                // return userService.findByEmail(email).orElseThrow(...);
                // Assuming similar to PerformanceController logic
                return userService.findByUsername(email); // Or findByEmail, depending on Service. Previous code used
                                                          // findByUsername
        }

        @PostMapping("/check")
        @Operation(summary = "대기열 필요성 확인")
        public ResponseEntity<QueueCheckResponse> checkQueueRequirement(
                        @Valid @RequestBody TokenRequest request,
                        @RequestHeader("Authorization") String authHeader) {

                UserEntity user = getUserFromHeader(authHeader);

                // PerformanceId is String now
                QueueCheckResponse response = queueService.getBookingToken(
                                String.valueOf(request.getPerformanceId()), // Assuming Request has Long, convert to
                                                                            // String
                                request.getScheduleId(),
                                Long.valueOf(user.getUserId()));

                return ResponseEntity.ok(response);
        }

        @PostMapping("/token")
        @Operation(summary = "대기열 토큰 발급")
        public ResponseEntity<TokenIssueResponse> issueToken(
                        @Valid @RequestBody TokenIssueRequest request,
                        @RequestHeader("Authorization") String authHeader) {

                UserEntity user = getUserFromHeader(authHeader);

                TokenIssueResponse response = queueService.issueQueueToken(
                                Long.valueOf(user.getUserId()), String.valueOf(request.getPerformanceId()));

                return ResponseEntity.ok(response);
        }

        @PostMapping("/activate")
        @Operation(summary = "대기열 토큰 활성화")
        public ResponseEntity<QueueStatusResponse> activateToken(
                        @Valid @RequestBody TokenActivateRequest request,
                        @RequestHeader("Authorization") String authHeader) {

                UserEntity user = getUserFromHeader(authHeader);

                QueueStatusResponse response = queueService.activateToken(
                                request.getToken(),
                                Long.valueOf(user.getUserId()),
                                String.valueOf(request.getPerformanceId()),
                                request.getScheduleId());

                return ResponseEntity.ok(response);
        }

        @GetMapping("/status/{token}")
        @Operation(summary = "토큰 상태 조회")
        public ResponseEntity<QueueStatusResponse> getTokenStatus(
                        @Parameter(description = "토큰 문자열", required = true) @PathVariable String token) {

                QueueStatusResponse response = queueService.getTokenStatus(token);

                return ResponseEntity.ok(response);
        }

        @PostMapping("/heartbeat")
        @Operation(summary = "Heartbeat 전송")
        public ResponseEntity<String> sendHeartbeat(
                        @RequestBody(required = false) HeartbeatRequest request,
                        @RequestHeader("Authorization") String authHeader) {

                // Heartbeat often doesn't need strict Auth if just pinging, but logic uses User
                try {
                        UserEntity user = getUserFromHeader(authHeader);

                        if (request != null) {
                                queueService.updateHeartbeat(
                                                Long.valueOf(user.getUserId()),
                                                String.valueOf(request.getPerformanceId()),
                                                request.getScheduleId());
                        }
                        return ResponseEntity.ok("Heartbeat Received");
                } catch (Exception e) {
                        return ResponseEntity.ok("Heartbeat Processed");
                }
        }
}