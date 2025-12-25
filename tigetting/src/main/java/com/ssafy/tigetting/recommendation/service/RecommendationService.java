package com.ssafy.tigetting.recommendation.service;

import com.ssafy.tigetting.mapper.AIRecommendationMapper;
import com.ssafy.tigetting.mapper.BookingMapper;
import com.ssafy.tigetting.mapper.PerformanceMapper;
import com.ssafy.tigetting.performance.dto.PerformanceDto;
import com.ssafy.tigetting.recommendation.dto.AIRecommendation;
import com.ssafy.tigetting.recommendation.dto.PerformanceForAI;
import com.ssafy.tigetting.recommendation.dto.UserBookingHistory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 추천 시스템 비즈니스 로직 서비스
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class RecommendationService {

    private final PerformanceMapper performanceMapper;
    private final BookingMapper bookingMapper;
    private final AIRecommendationMapper aiRecommendationMapper;
    private final ClaudeAIService claudeAIService;

    @Value("${recommendation.counts.home}")
    private int homeCount;

    @Value("${recommendation.counts.genre}")
    private int genreCount;

    // 추천 개수 최대 제한 (안전장치)
    private static final int MAX_RECOMMENDATIONS = 10;

    /**
     * 페이지 렌더링용 데이터 조회 (전체 공연 + AI 추천)
     */
    public com.ssafy.tigetting.recommendation.dto.PagePerformanceResponse getPagePerformances(Integer genreId,
            Integer userId) {
        log.info("📋 페이지 데이터 조회 - genreId: {}, userId: {}", genreId, userId);

        // 1. AI 추천 리스트 먼저 조회
        List<PerformanceDto> recommendations;
        String recommendationType;

        if (userId == null) {
            // 비로그인: 기본 추천
            if (genreId == null || genreId == 0) {
                // 메인 페이지: 각 장르별로 추천
                recommendations = getRecommendationsByAllGenres(null);
            } else {
                // 장르 페이지: 해당 장르만 (최대 10개)
                recommendations = getBaseRecommendations(genreId, Math.min(genreCount, MAX_RECOMMENDATIONS));
            }
            recommendationType = "base";
        } else {
            // 로그인: 개인화 추천
            if (genreId == null || genreId == 0) {
                // 메인 페이지: 각 장르별로 추천
                recommendations = getPersonalizedRecommendationsByAllGenres(userId);
            } else {
                // 장르 페이지: 해당 장르만 (최대 10개)
                recommendations = getPersonalizedRecommendations(genreId, userId, Math.min(genreCount, MAX_RECOMMENDATIONS));
            }
            recommendationType = "personalized";
        }

        // 추천이 비어있으면 경고
        if (recommendations.isEmpty()) {
            log.warn("⚠️⚠️⚠️ 추천 공연이 0개입니다! AI 배치 작업을 실행하세요: POST /api/recommendations/batch");
        }

        // 2. 전체 공연 리스트 조회 (추천에 포함된 공연 제외)
        List<PerformanceDto> allPerformances = getAllPerformancesByGenreExcluding(genreId, recommendations);

        // 전체 공연도 비어있으면 심각한 문제
        if (allPerformances.isEmpty() && recommendations.isEmpty()) {
            log.error("🚨 데이터베이스에 공연 데이터가 전혀 없습니다! performances 테이블을 확인하세요.");
        }

        return new com.ssafy.tigetting.recommendation.dto.PagePerformanceResponse(
                allPerformances,
                recommendations,
                recommendationType);
    }


    /**
     * 장르별 전체 공연 조회
     */
    private List<PerformanceDto> getAllPerformancesByGenre(Integer genreId) {
        // genreId가 null 또는 0이면 전체, 나머지는 장르별 필터링
        if (genreId == null || genreId == 0) {
            return performanceMapper.findAll();
        } else {
            return performanceMapper.findByVenueIdAndFilters(null, genreId, null);
        }
    }

    /**
     * 장르별 전체 공연 조회 (추천에 포함된 공연 제외)
     */
    private List<PerformanceDto> getAllPerformancesByGenreExcluding(Integer genreId, List<PerformanceDto> recommendations) {
        List<PerformanceDto> allPerformances = getAllPerformancesByGenre(genreId);
        
        if (recommendations == null || recommendations.isEmpty()) {
            // 추천이 없으면 그냥 전체 반환
            return allPerformances;
        }
        
        // 추천에 포함된 공연 ID 세트
        Set<String> recommendedIds = recommendations.stream()
                .map(PerformanceDto::getMt20id)
                .collect(Collectors.toSet());
        
        // 추천에 없는 공연들만 필터링 (원래 순서 유지)
        List<PerformanceDto> filtered = allPerformances.stream()
                .filter(p -> !recommendedIds.contains(p.getMt20id()))
                .collect(Collectors.toList());
        
        log.info("🎲 전체 공연 필터링 완료 - 원본: {}, 추천 제외 후: {}", allPerformances.size(), filtered.size());
        
        return filtered;
    }

    /**
     * 추천 공연만 조회 (기존 메서드 유지 - 하위 호환성)
     */
    public List<PerformanceDto> getRecommendations(Integer genreId, Integer userId) {
        log.info("📋 추천 조회 - genreId: {}, userId: {}", genreId, userId);

        if (userId == null) {
            // 비로그인: DB에서 기본 추천만 조회
            int limit = (genreId == null || genreId == 0)
                ? Math.min(homeCount, MAX_RECOMMENDATIONS)
                : Math.min(genreCount, MAX_RECOMMENDATIONS);
            return getBaseRecommendations(genreId, limit);
        } else {
            // 로그인: 개인화 추천
            int limit = (genreId == null || genreId == 0)
                ? Math.min(homeCount, MAX_RECOMMENDATIONS)
                : Math.min(genreCount, MAX_RECOMMENDATIONS);
            return getPersonalizedRecommendations(genreId, userId, limit);
        }
    }

    /**
     * 기본 추천 조회 (비로그인)
     */
    private List<PerformanceDto> getBaseRecommendations(Integer genreId, int limit) {
        log.info("🎭 기본 추천 조회 - genreId: {}, limit: {}", genreId, limit);

        List<String> recommendedIds = aiRecommendationMapper.findIdsByGenreId(genreId, limit);
        log.info("🔍 AI 추천 조회 결과 - genreId: {}, 결과 개수: {}", genreId, recommendedIds != null ? recommendedIds.size() : "null");

        if (recommendedIds == null || recommendedIds.isEmpty()) {
            log.warn("⚠️ 저장된 추천이 없습니다. 각 장르별로 추천을 반환합니다.");
            return getRecommendationsByAllGenres(genreId);
        }

        List<PerformanceDto> performances = performanceMapper.selectByIds(recommendedIds);
        log.info("✅ 공연 조회 결과 - {} 개", performances != null ? performances.size() : "null");
        return performances != null ? performances : new ArrayList<>();
    }
    
    /**
     * 장르별 추천 조회 (저장된 추천이 없을 때)
     */
    private List<PerformanceDto> getRecommendationsByAllGenres(Integer genreId) {
        log.info("🎨 장르별 추천 조회 시작 - genreId: {}", genreId);
        List<PerformanceDto> result = new ArrayList<>();
        
        // 메인 페이지: 각 장르별로 균등 분배 (최대 10개를 4개 장르로 나눔)
        if (genreId == null || genreId == 0) {
            Integer[] genres = {1, 2, 3, 4}; // 클래식, 콘서트, 뮤지컬, 연극
            int perGenre = Math.min(homeCount / genres.length, MAX_RECOMMENDATIONS / genres.length);

            for (Integer genre : genres) {
                log.info("  🔍 장르 {} 추천 조회 중...", genre);
                List<String> genreIds = aiRecommendationMapper.findIdsByGenreId(genre, perGenre);
                log.info("  📊 장르 {} AI 추천 결과: {} 개", genre, genreIds != null ? genreIds.size() : "null");
                
                if (genreIds != null && !genreIds.isEmpty()) {
                    List<PerformanceDto> performances = performanceMapper.selectByIds(genreIds);
                    if (performances != null && !performances.isEmpty()) {
                        log.info("  ✅ 장르 {} 공연 조회 성공: {} 개", genre, performances.size());
                        result.addAll(performances);
                    }
                }
            }
            
            // 만약 저장된 추천이 전혀 없다면 장르별 최신 공연 조회
            if (result.isEmpty()) {
                log.warn("⚠️ AI 추천이 전혀 없습니다. 최신 공연으로 대체합니다.");
                for (Integer genre : genres) {
                    log.info("  🔍 장르 {} 최신 공연 조회 중...", genre);
                    List<PerformanceDto> genrePerfs = performanceMapper.findByVenueIdAndFilters(null, genre, null);
                    log.info("  📊 장르 {} 최신 공연 결과: {} 개", genre, genrePerfs != null ? genrePerfs.size() : "null");
                    
                    if (genrePerfs != null && !genrePerfs.isEmpty()) {
                        int limit = Math.min(perGenre, genrePerfs.size());
                        result.addAll(genrePerfs.subList(0, limit));
                        log.info("  ✅ 장르 {} 최신 공연 {} 개 추가", genre, limit);
                    }
                }

                // 그래도 없으면 전체 공연에서 가져오기
                if (result.isEmpty()) {
                    log.warn("⚠️ 장르별 공연도 없습니다. 전체 공연에서 조회합니다.");
                    List<PerformanceDto> allPerfs = performanceMapper.findAll();
                    if (allPerfs != null && !allPerfs.isEmpty()) {
                        int limit = Math.min(MAX_RECOMMENDATIONS, allPerfs.size());
                        result.addAll(allPerfs.subList(0, limit));
                        log.info("  ✅ 전체 공연에서 {} 개 추가", limit);
                    }
                }
            }
        } 
        // 특정 장르 페이지: 해당 장르만 (최대 10개)
        else {
            log.info("  🔍 특정 장르 {} 최신 공연 조회 중...", genreId);
            List<PerformanceDto> genrePerfs = performanceMapper.findByVenueIdAndFilters(null, genreId, null);
            log.info("  📊 장르 {} 최신 공연 결과: {} 개", genreId, genrePerfs != null ? genrePerfs.size() : "null");
            
            if (genrePerfs != null && !genrePerfs.isEmpty()) {
                int limit = Math.min(Math.min(genreCount, MAX_RECOMMENDATIONS), genrePerfs.size());
                result.addAll(genrePerfs.subList(0, limit));
                log.info("  ✅ 장르 {} 최신 공연 {} 개 추가", genreId, limit);
            } else {
                // 해당 장르에 공연이 없으면 전체 공연에서 가져오기
                log.warn("⚠️ 장르 {} 공연이 없습니다. 전체 공연에서 조회합니다.", genreId);
                List<PerformanceDto> allPerfs = performanceMapper.findAll();
                if (allPerfs != null && !allPerfs.isEmpty()) {
                    int limit = Math.min(MAX_RECOMMENDATIONS, allPerfs.size());
                    result.addAll(allPerfs.subList(0, limit));
                    log.info("  ✅ 전체 공연에서 {} 개 추가", limit);
                }
            }
        }
        
        log.info("🎨 장르별 추천 조회 완료 - 총 {} 개", result.size());
        return result;
    }
    
    /**
     * 개인화 추천 - 메인 페이지용 (각 장르별로 균등 분배)
     */
    private List<PerformanceDto> getPersonalizedRecommendationsByAllGenres(Integer userId) {
        log.info("🎯 개인화 추천 조회 (메인 페이지) - userId: {}", userId);
        
        List<PerformanceDto> result = new ArrayList<>();
        Integer[] genres = {1, 2, 3, 4}; // 클래식, 콘서트, 뮤지컬, 연극
        int perGenre = Math.min(homeCount / genres.length, MAX_RECOMMENDATIONS / genres.length);

        // 사용자 예매 이력 조회
        List<UserBookingHistory> userHistory = bookingMapper.selectUserBookingHistory(userId);
        
        if (userHistory == null || userHistory.isEmpty()) {
            log.info("ℹ️ 사용자 예매 이력이 없습니다. 각 장르별로 기본 추천을 반환합니다.");
            return getRecommendationsByAllGenres(null);
        }
        
        // 각 장르별로 개인화 추천
        for (Integer genre : genres) {
            List<String> baseRecommendationIds = aiRecommendationMapper.findIdsByGenreId(genre, genreCount);
            
            if (baseRecommendationIds != null && !baseRecommendationIds.isEmpty()) {
                // AI 개인화 추천
                List<String> personalizedIds = claudeAIService.personalizeRecommendations(
                        baseRecommendationIds,
                        userHistory,
                        perGenre);
                if (personalizedIds != null && !personalizedIds.isEmpty()) {
                    List<PerformanceDto> performances = performanceMapper.selectByIds(personalizedIds);
                    if (performances != null && !performances.isEmpty()) {
                        result.addAll(performances);
                    }
                }
            } else {
                // 저장된 추천이 없으면 기본 추천
                List<String> genreIds = aiRecommendationMapper.findIdsByGenreId(genre, perGenre);
                if (genreIds != null && !genreIds.isEmpty()) {
                    List<PerformanceDto> performances = performanceMapper.selectByIds(genreIds);
                    if (performances != null && !performances.isEmpty()) {
                        result.addAll(performances);
                    }
                }
            }
        }
        
        return result;
    }

    /**
     * 개인화 추천 조회 (로그인)
     */
    private List<PerformanceDto> getPersonalizedRecommendations(Integer genreId, Integer userId, int limit) {
        log.info("🎯 개인화 추천 조회 - genreId: {}, userId: {}, limit: {}", genreId, userId, limit);

        // 1. 기본 추천 조회
        int baseCount = (genreId == null || genreId == 0) ? homeCount : genreCount;
        List<String> baseRecommendationIds = aiRecommendationMapper.findIdsByGenreId(genreId, baseCount);

        if (baseRecommendationIds == null || baseRecommendationIds.isEmpty()) {
            log.warn("⚠️ 저장된 기본 추천이 없습니다.");
            return getBaseRecommendations(genreId, limit);
        }

        // 2. 사용자 예매 이력 조회
        List<UserBookingHistory> userHistory = bookingMapper.selectUserBookingHistory(userId);

        if (userHistory == null || userHistory.isEmpty()) {
            log.info("ℹ️ 사용자 예매 이력이 없습니다. 각 장르별로 추천을 반환합니다.");
            return getRecommendationsByAllGenres(genreId);
        }

        // 3. AI 개인화 추천
        List<String> personalizedIds = claudeAIService.personalizeRecommendations(
                baseRecommendationIds,
                userHistory,
                limit);

        List<PerformanceDto> performances = performanceMapper.selectByIds(personalizedIds);
        return performances != null ? performances : new ArrayList<>();
    }

    /**
     * 배치 작업: 전체 장르 기본 추천 생성
     */
    @Transactional
    public void generateAllBaseRecommendations() {
        log.info("🚀 배치 작업 시작 - 전체 기본 추천 생성");

        // 전체 활성 공연 조회
        List<PerformanceForAI> allPerformances = performanceMapper.selectAllActivePerformances();
        log.info("📊 전체 활성 공연 수: {}", allPerformances.size());

        // 장르별 추천 생성 (null=home/전체, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)
        Integer[] genreIds = { null, 1, 2, 3, 4 };

        for (Integer genreId : genreIds) {
            try {
                generateBaseRecommendationsForPage(genreId, allPerformances);
            } catch (Exception e) {
                log.error("❌ 장르 {} 추천 생성 실패", genreId, e);
            }
        }

        log.info("✅ 배치 작업 완료");
    }

    /**
     * 특정 장르의 기본 추천 생성
     */
    @Transactional
    public void generateBaseRecommendationsForPage(Integer genreId, List<PerformanceForAI> allPerformances) {
        log.info("🎬 장르 {} 기본 추천 생성 시작", genreId);

        // 추천 개수 결정 (최대 10개 제한)
        int count = (genreId == null || genreId == 0)
            ? Math.min(homeCount, MAX_RECOMMENDATIONS)
            : Math.min(genreCount, MAX_RECOMMENDATIONS);

        // AI 추천 생성
        List<String> recommendedIds = claudeAIService.generateBaseRecommendations(
                allPerformances,
                genreId,
                count);

        // 최대 개수 제한 재확인 (안전장치)
        if (recommendedIds.size() > MAX_RECOMMENDATIONS) {
            log.warn("⚠️ AI가 {} 개를 반환했습니다. {} 개로 제한합니다.",
                recommendedIds.size(), MAX_RECOMMENDATIONS);
            recommendedIds = recommendedIds.subList(0, MAX_RECOMMENDATIONS);
        }

        // 기존 추천 삭제
        aiRecommendationMapper.deleteByGenreId(genreId);

        // 새 추천 저장
        List<AIRecommendation> recommendations = new ArrayList<>();
        LocalDateTime now = LocalDateTime.now();

        for (int i = 0; i < recommendedIds.size(); i++) {
            AIRecommendation recommendation = new AIRecommendation();
            recommendation.setGenreId(genreId);
            recommendation.setMt20id(recommendedIds.get(i));
            recommendation.setRankOrder(i + 1);
            recommendation.setGeneratedAt(now);
            recommendations.add(recommendation);
        }

        if (!recommendations.isEmpty()) {
            aiRecommendationMapper.saveAll(recommendations);
            log.info("✅ 장르 {} 추천 {} 개 저장 완료", genreId, recommendations.size());
        }
    }

    /**
     * 전체 활성 공연 조회 (테스트용 public 메서드)
     */
    public List<PerformanceForAI> getAllActivePerformances() {
        return performanceMapper.selectAllActivePerformances();
    }
}
