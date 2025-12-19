package com.ssafy.tigetting.performance.controller;

import com.ssafy.tigetting.dto.tget.PerformanceDto;
import com.ssafy.tigetting.dto.tget.PerformanceDetailDto;
import com.ssafy.tigetting.performance.service.PerformanceService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/performances")
@RequiredArgsConstructor
public class PerformanceController {

    private final PerformanceService performanceService;

    @GetMapping("/main")
    public ResponseEntity<List<PerformanceDto>> getAllPerformances() {
        return ResponseEntity.ok(performanceService.getAllPerformances());
    }

    @GetMapping("/{id}")
    public ResponseEntity<PerformanceDetailDto> getPerformanceDetail(@PathVariable String id) {
        return ResponseEntity.ok(performanceService.getPerformanceDetail(id));
    }
}
