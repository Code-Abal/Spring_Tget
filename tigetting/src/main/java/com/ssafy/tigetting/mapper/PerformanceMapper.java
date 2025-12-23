package com.ssafy.tigetting.mapper;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.ssafy.tigetting.performance.dto.PerformanceDto;
import com.ssafy.tigetting.performance.dto.PerformanceDetailDto;

@Mapper
public interface PerformanceMapper {
    
    /*
        void save(Performance performance);

        void update(Performance performance);

        Optional<Performance> findById(Long id);

        List<Performance> findAll();

        List<Performance> findByVenueId(Long venueId);

        void deleteById(Long id);    
    */
    Optional<PerformanceDto> findById(String id);

    List<PerformanceDto> findAll();
    
    Optional<PerformanceDetailDto> findDetailById(String id);

    // 공연장별, 장르별, 권역별 필터링 공연 조회
    List<PerformanceDto> findByVenueIdAndFilters(
        @Param("mt10id") String mt10id,
        @Param("genreId") Integer genreId,
        @Param("region") String region
    );
}
