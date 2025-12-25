package com.ssafy.tigetting.mapper;

import com.ssafy.tigetting.recommendation.dto.AIRecommendation;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * AI 추천 결과 Mapper
 */
@Mapper
public interface AIRecommendationMapper {

        // 추천 결과 저장
        void save(AIRecommendation recommendation);

        // 추천 결과 일괄 저장
        void saveAll(@Param("recommendations") List<AIRecommendation> recommendations);

        // 장르별 추천 조회
        List<AIRecommendation> findByGenreId(
                        @Param("genreId") Integer genreId,
                        @Param("limit") int limit);

        // 장르별 추천 ID 목록 조회
        List<String> findIdsByGenreId(
                        @Param("genreId") Integer genreId,
                        @Param("limit") int limit);

        // 기존 추천 삭제 (재생성 전)
        void deleteByGenreId(@Param("genreId") Integer genreId);

        // 전체 추천 삭제
        void deleteAll();
}
