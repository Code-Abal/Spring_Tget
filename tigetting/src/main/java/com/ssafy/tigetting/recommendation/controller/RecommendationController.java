package com.ssafy.tigetting.recommendation.controller;

import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.performance.dto.PerformanceDto;
import com.ssafy.tigetting.recommendation.service.RecommendationService;
import com.ssafy.tigetting.user.entity.UserEntity;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * AI 추천 API 컨트롤러
 */
@Tag(name = "Recommendations", description = "AI 기반 공연 추천 API")
@Slf4j
@RestController
@RequestMapping("/api/recommendations")
@RequiredArgsConstructor
public class RecommendationController {

    private final RecommendationService recommendationService;
    private final JwtUtil jwtUtil;
    private final UserMapper userMapper;

    /**
     * 페이지 렌더링용 데이터 조회 (전체 공연 + AI 추천)
     * 
     * @param pageType   페이지 타입 (0=home, 1=concert, 2=musical, 3=theater, 4=classic)
     * @param authHeader Authorization 헤더 (선택사항)
     */
    @Operation(summary = "페이지별 공연 데이터 조회",
               description = "페이지 타입에 맞는 전체 공연 목록과 AI 추천 공연을 함께 조회합니다. 로그인 시 개인화 추천을 제공합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "400", description = "잘못된 pageType 값")
    })
    @GetMapping("/page")
    public ResponseEntity<com.ssafy.tigetting.recommendation.dto.PagePerformanceResponse> getPagePerformances(
            @Parameter(description = "페이지 타입 (0=홈, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)", required = true)
            @RequestParam Integer pageType,
            @Parameter(description = "JWT 토큰 (로그인 시)", required = false)
            @RequestHeader(value = "Authorization", required = false) String authHeader) {

        log.info("📥 페이지 데이터 조회 요청 - pageType: {}", pageType);

        Integer userId = extractUserId(authHeader);

        com.ssafy.tigetting.recommendation.dto.PagePerformanceResponse response = recommendationService
                .getPagePerformances(pageType, userId);

        log.info("페이지 데이터 조회 완료 - 전체: {}, 추천: {}, 타입: {}",
                response.getAllPerformances().size(),
                response.getRecommendations().size(),
                response.getRecommendationType());

        return ResponseEntity.ok(response);
    }

    /**
     * 추천 공연만 조회 (기존 API - 하위 호환성 유지)
     * 
     * @param pageType   페이지 타입 (0=home, 1=concert, 2=musical, 3=theater, 4=classic)
     * @param authHeader Authorization 헤더 (선택사항)
     */
    @Operation(summary = "추천 공연 목록 조회",
               description = "AI가 추천한 공연 목록만 조회합니다. 로그인 시 개인화 추천을 제공합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "400", description = "잘못된 pageType 값")
    })
    @GetMapping
    public ResponseEntity<List<PerformanceDto>> getRecommendations(
            @Parameter(description = "페이지 타입 (0=홈, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)", required = true)
            @RequestParam Integer pageType,
            @Parameter(description = "JWT 토큰 (로그인 시)", required = false)
            @RequestHeader(value = "Authorization", required = false) String authHeader) {

        log.info("추천 조회 요청 - pageType: {}", pageType);

        Integer userId = extractUserId(authHeader);

        List<PerformanceDto> recommendations = recommendationService.getRecommendations(pageType, userId);

        log.info("추천 조회 완료 - {} 개 반환", recommendations.size());
        return ResponseEntity.ok(recommendations);
    }

    /**
     * Authorization 헤더에서 userId 추출
     */
    private Integer extractUserId(String authHeader) {
        Integer userId = null;

        // 로그인 사용자인 경우 userId 추출
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            try {
                String token = authHeader.replace("Bearer ", "");
                String email = jwtUtil.extractUsername(token);
                UserEntity user = userMapper.findByEmail(email).orElse(null);
                if (user != null) {
                    userId = user.getUserId();
                    log.info("👤 로그인 사용자 - userId: {}", userId);
                }
            } catch (Exception e) {
                log.warn("토큰 파싱 실패, 비로그인으로 처리", e);
            }
        }

        return userId;
    }

    /**
     * 배치 작업 수동 실행 (관리자용)
     */
    @Operation(summary = "AI 추천 배치 실행 (관리자용)",
               description = "모든 장르의 AI 기본 추천을 생성합니다. 홈, 클래식, 콘서트, 뮤지컬, 연극 각각 10개씩 생성됩니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "배치 작업 성공"),
            @ApiResponse(responseCode = "500", description = "배치 작업 실패")
    })
    @PostMapping("/batch")
    public ResponseEntity<String> runBatchManually() {
        log.info("🔧 배치 작업 수동 실행 요청");

        try {
            recommendationService.generateAllBaseRecommendations();
            return ResponseEntity.ok("배치 작업이 성공적으로 완료되었습니다.");
        } catch (Exception e) {
            log.error("배치 작업 실패", e);
            return ResponseEntity.internalServerError()
                    .body("배치 작업 실패: " + e.getMessage());
        }
    }

    /**
     * AI 추천 테스트 (특정 장르만)
     */
    @Operation(summary = "AI 추천 테스트 (특정 장르)",
               description = "특정 장르의 AI 추천만 생성하여 테스트합니다. genreId를 지정하지 않으면 클래식(1)으로 기본 설정됩니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "테스트 완료 (성공/실패 메시지 포함)")
    })
    @PostMapping("/test-ai")
    public ResponseEntity<String> testAI(
            @Parameter(description = "장르 ID (1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)", required = false)
            @RequestParam(required = false) Integer genreId) {
        log.info("🧪 AI 추천 테스트 - genreId: {}", genreId);

        try {
            if (genreId == null) {
                genreId = 1; // 기본값: 클래식
            }
            
            // 전체 공연 조회 후 장르별 추천 생성
            List<com.ssafy.tigetting.recommendation.dto.PerformanceForAI> allPerformances = 
                recommendationService.getAllActivePerformances();
            
            recommendationService.generateBaseRecommendationsForPage(genreId, allPerformances);
            
            return ResponseEntity.ok(String.format(
                "AI 추천 테스트 완료 - 장르 %d\n" +
                "DB에서 ai_recommendations 테이블을 확인하세요.\n" +
                "SELECT * FROM ai_recommendations WHERE genre_id = %d;",
                genreId, genreId));
        } catch (Exception e) {
            log.error("AI 추천 테스트 실패", e);
            return ResponseEntity.ok(String.format(
                "AI API 호출 실패 (폴백 사용됨)\n" +
                "에러: %s\n" +
                "폴백으로 최신순 추천이 저장되었습니다.",
                e.getMessage()));
        }
    }
}

