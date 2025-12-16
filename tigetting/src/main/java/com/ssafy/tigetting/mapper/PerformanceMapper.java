package com.ssafy.tigetting.mapper;

import com.ssafy.tigetting.dto.tget.PerformanceDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Optional;

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
    
    List<PerformanceDto> findByGenreWithPagination(@Param("genreName") String genreName, 
                                                     @Param("offset") int offset, 
                                                     @Param("limit") int limit);
}
