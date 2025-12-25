package com.ssafy.tigetting.performance.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.tigetting.performance.dto.PerformanceDetailDto;
import com.ssafy.tigetting.performance.dto.PerformanceDto;
import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.performance.service.PerformanceService;
import com.ssafy.tigetting.recommendation.service.RecommendationService;
import com.ssafy.tigetting.recommendation.dto.PagePerformanceResponse;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.user.entity.UserEntity;

import lombok.RequiredArgsConstructor;

@Tag(name = "Performances", description = "공연 정보 API")
@RestController
@RequestMapping("/performances")
@RequiredArgsConstructor
public class PerformanceController {

    private final PerformanceService performanceService;
    private final JwtUtil jwtUtil;
    private final RecommendationService recommendationService;
    private final UserMapper userMapper;

    @Operation(summary = "메인 페이지 공연 목록 조회",
               description = "장르별 전체 공연 목록과 AI 추천을 함께 조회합니다. 로그인 시 개인화 추천을 제공합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    @GetMapping("/main")
    public ResponseEntity<PagePerformanceResponse> getAllPerformances(
            @Parameter(description = "장르 ID (null=전체, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)", required = false)
            @RequestParam(value = "genreId", required = false) Integer genreId,
            @Parameter(description = "JWT 토큰 (로그인 시)", required = false)
            @RequestHeader(value = "Authorization", required = false) String authHeader) {

        // JWT 토큰에서 userId 추출
        Integer userId = extractUserId(authHeader);

        // genreId: null 또는 0 = 홈 (전체 장르), 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극
        PagePerformanceResponse response = recommendationService.getPagePerformances(genreId, userId);

        return ResponseEntity.ok(response);
    }

    /**
     * Authorization 헤더에서 userId 추출
     */
    private Integer extractUserId(String authHeader) {
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            try {
                String token = authHeader.replace("Bearer ", "");
                String email = jwtUtil.extractUsername(token);
                UserEntity user = userMapper.findByEmail(email).orElse(null);
                if (user != null) {
                    return user.getUserId();
                }
            } catch (Exception e) {
                // 토큰 파싱 실패 시 비로그인으로 처리
            }
        }
        return null;
    }

    @Operation(summary = "공연 상세 정보 조회",
               description = "공연 ID로 상세 정보를 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "404", description = "공연을 찾을 수 없음")
    })
    @GetMapping("/{id}")
    public ResponseEntity<PerformanceDetailDto> getPerformanceDetail(
            @Parameter(description = "공연 ID", required = true)
            @PathVariable String id) {
        return ResponseEntity.ok(performanceService.getPerformanceDetail(id));
    }

    @Operation(summary = "대기열 정보 조회",
               description = "공연의 현재 대기 인원 정보를 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    @GetMapping("/{id}/queue")
    public ResponseEntity<Map<String, Object>> getQueue(
            @Parameter(description = "공연 ID", required = true)
            @PathVariable String id) {
        // 랜덤 대기 인원 생성 (0~10명)
        int randomQueue = (int) (Math.random() * 3) + 1;

        Map<String, Object> response = new HashMap<>();
        response.put("queueNumber", randomQueue);
        response.put("performanceId", id);

        return ResponseEntity.ok(response);
    }

    @Operation(summary = "내 공연 목록 조회",
               description = "로그인한 사용자가 등록한 공연 목록을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "401", description = "인증 실패")
    })
    @GetMapping("/my")
    public ResponseEntity<List<PerformanceDto>> getMyPerformances(
            @Parameter(description = "JWT 토큰", required = true)
            @RequestHeader("Authorization") String authHeader) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.getMyPerformances(email));
    }

    @Operation(summary = "공연 등록",
               description = "새로운 공연을 등록합니다. 관리자 또는 공연 관리자 권한이 필요합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "등록 성공"),
            @ApiResponse(responseCode = "401", description = "인증 실패"),
            @ApiResponse(responseCode = "403", description = "권한 없음")
    })
    @PostMapping
    public ResponseEntity<PerformanceDto> createPerformance(
            @Parameter(description = "JWT 토큰", required = true)
            @RequestHeader("Authorization") String authHeader,
            @Parameter(description = "공연명", required = true)
            @RequestParam("prfnm") String prfnm,
            @Parameter(description = "장르명", required = true)
            @RequestParam("genreName") String genreName,
            @Parameter(description = "공연 시작일 (yyyy-MM-dd)", required = true)
            @RequestParam("prfpdfrom") String prfpdfrom,
            @Parameter(description = "공연 종료일 (yyyy-MM-dd)", required = true)
            @RequestParam("prfpdto") String prfpdto,
            @Parameter(description = "공연 시설명", required = true)
            @RequestParam("fcltynm") String fcltynm,
            @Parameter(description = "지역", required = true)
            @RequestParam("area") String area,
            @Parameter(description = "공연장 ID", required = true)
            @RequestParam("mt10id") String mt10id,
            @Parameter(description = "공연 상태 (공연예정/공연중/공연완료)", required = true)
            @RequestParam("prfstate") String prfstate,
            @Parameter(description = "포스터 이미지 파일", required = true)
            @RequestPart("poster") org.springframework.web.multipart.MultipartFile poster) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.createPerformance(
                email, prfnm, genreName, prfpdfrom, prfpdto, fcltynm, area, mt10id, prfstate, poster));
    }

    @Operation(summary = "공연 수정",
               description = "기존 공연 정보를 수정합니다. 관리자 또는 공연 등록자만 수정 가능합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "수정 성공"),
            @ApiResponse(responseCode = "401", description = "인증 실패"),
            @ApiResponse(responseCode = "403", description = "권한 없음"),
            @ApiResponse(responseCode = "404", description = "공연을 찾을 수 없음")
    })
    @PutMapping("/{id}")
    public ResponseEntity<PerformanceDto> updatePerformance(
            @Parameter(description = "JWT 토큰", required = true)
            @RequestHeader("Authorization") String authHeader,
            @Parameter(description = "공연 ID", required = true)
            @PathVariable String id,
            @RequestParam("prfnm") String prfnm,
            @RequestParam("genreName") String genreName,
            @RequestParam("prfpdfrom") String prfpdfrom,
            @RequestParam("prfpdto") String prfpdto,
            @RequestParam("fcltynm") String fcltynm,
            @RequestParam("area") String area,
            @RequestParam("mt10id") String mt10id,
            @RequestParam("prfstate") String prfstate,
            @Parameter(description = "포스터 이미지 파일 (선택사항)")
            @RequestPart(value = "poster", required = false) org.springframework.web.multipart.MultipartFile poster) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.updatePerformance(
                email, id, prfnm, genreName, prfpdfrom, prfpdto, fcltynm, area, mt10id, prfstate, poster));
    }

    @Operation(summary = "공연 삭제",
               description = "공연을 삭제합니다. 관리자 또는 공연 등록자만 삭제 가능합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "204", description = "삭제 성공"),
            @ApiResponse(responseCode = "401", description = "인증 실패"),
            @ApiResponse(responseCode = "403", description = "권한 없음"),
            @ApiResponse(responseCode = "404", description = "공연을 찾을 수 없음")
    })
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePerformance(
            @Parameter(description = "JWT 토큰", required = true)
            @RequestHeader("Authorization") String authHeader,
            @Parameter(description = "공연 ID", required = true)
            @PathVariable String id) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        performanceService.deletePerformance(email, id);
        return ResponseEntity.noContent().build();
    }

    @Operation(summary = "공연 포스터 이미지 조회",
               description = "공연 ID로 포스터 이미지를 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "404", description = "포스터를 찾을 수 없음")
    })
    @GetMapping("/poster/{id}")
    public ResponseEntity<byte[]> getPoster(
            @Parameter(description = "공연 ID", required = true)
            @PathVariable String id) {
        System.out.println("🎯 Controller - getPoster 호출됨! ID: " + id);
        return performanceService.getPoster(id);
    }
}
