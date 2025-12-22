package com.ssafy.tigetting.performance.controller;

import java.util.List;

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

import com.ssafy.tigetting.dto.tget.PerformanceDetailDto;
import com.ssafy.tigetting.dto.tget.PerformanceDto;
import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.performance.service.PerformanceService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/performances")
@RequiredArgsConstructor
public class PerformanceController {

    private final PerformanceService performanceService;
    private final JwtUtil jwtUtil;

    @GetMapping("/main")
    public ResponseEntity<List<PerformanceDto>> getAllPerformances() {
        return ResponseEntity.ok(performanceService.getAllPerformances());
    }

    @GetMapping("/{id}")
    public ResponseEntity<PerformanceDetailDto> getPerformanceDetail(@PathVariable String id) {
        return ResponseEntity.ok(performanceService.getPerformanceDetail(id));
    }

    @GetMapping("/my")
    public ResponseEntity<List<PerformanceDto>> getMyPerformances(@RequestHeader("Authorization") String authHeader) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.getMyPerformances(email));
    }

    @PostMapping
    public ResponseEntity<PerformanceDto> createPerformance(
            @RequestHeader("Authorization") String authHeader,
            @RequestParam("prfnm") String prfnm,
            @RequestParam("genreName") String genreName,
            @RequestParam("prfpdfrom") String prfpdfrom,
            @RequestParam("prfpdto") String prfpdto,
            @RequestParam("fcltynm") String fcltynm,
            @RequestParam("area") String area,
            @RequestParam("mt10id") String mt10id,
            @RequestParam("prfstate") String prfstate,
            @RequestPart("poster") org.springframework.web.multipart.MultipartFile poster) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.createPerformance(
            email, prfnm, genreName, prfpdfrom, prfpdto, fcltynm, area, mt10id, prfstate, poster));
    }

    @PutMapping("/{id}")
    public ResponseEntity<PerformanceDto> updatePerformance(
            @RequestHeader("Authorization") String authHeader,
            @PathVariable String id,
            @RequestParam("prfnm") String prfnm,
            @RequestParam("genreName") String genreName,
            @RequestParam("prfpdfrom") String prfpdfrom,
            @RequestParam("prfpdto") String prfpdto,
            @RequestParam("fcltynm") String fcltynm,
            @RequestParam("area") String area,
            @RequestParam("mt10id") String mt10id,
            @RequestParam("prfstate") String prfstate,
            @RequestPart(value = "poster", required = false) org.springframework.web.multipart.MultipartFile poster) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        return ResponseEntity.ok(performanceService.updatePerformance(
            email, id, prfnm, genreName, prfpdfrom, prfpdto, fcltynm, area, mt10id, prfstate, poster));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePerformance(
            @RequestHeader("Authorization") String authHeader,
            @PathVariable String id) {
        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);
        performanceService.deletePerformance(email, id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/poster/{id}")
    public ResponseEntity<byte[]> getPoster(@PathVariable String id) {
        System.out.println("🎯 Controller - getPoster 호출됨! ID: " + id);
        return performanceService.getPoster(id);
    }
}
