package com.ssafy.tigetting.mapper;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.tigetting.dto.tget.PerformanceDto;
import com.ssafy.tigetting.dto.tget.PerformanceDetailDto;

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
}
