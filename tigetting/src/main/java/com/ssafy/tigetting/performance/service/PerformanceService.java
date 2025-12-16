package com.ssafy.tigetting.performance.service;

import com.ssafy.tigetting.dto.tget.PerformanceDto;
import com.ssafy.tigetting.mapper.PerformanceMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PerformanceService {

    private final PerformanceMapper performanceMapper;

    public List<PerformanceDto> getAllPerformances() {
        List<PerformanceDto> performances = performanceMapper.findAll();
        System.out.println("조회된 공연 수: " + performances.size());
        return performances;
    }

    public List<PerformanceDto> getPerformancesByGenre(String genre, int offset, int limit) {
        List<PerformanceDto> performances = performanceMapper.findByGenreWithPagination(genre, offset, limit);
        System.out.println("장르: " + genre + ", 조회된 공연 수: " + performances.size());
        return performances;
    }
}
