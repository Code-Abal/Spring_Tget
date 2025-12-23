package com.ssafy.tigetting.venue.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.ssafy.tigetting.venue.dto.VenueDto;
import com.ssafy.tigetting.venue.dto.VenueDetailResponseDto;
import com.ssafy.tigetting.venue.entity.Venue;
import com.ssafy.tigetting.venue.service.VenueService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/venues")
@RequiredArgsConstructor
public class VenueController {

    private final VenueService venueService;

    // 모든 공연장 조회
    @GetMapping
    public ResponseEntity<List<Venue>> getAllVenues() {
        List<Venue> venues = venueService.getAllVenues();
        return ResponseEntity.ok(venues);
    }

    // 권역별 공연장 조회 (서울, 경기/인천, 충청/강원, 대구/경북, 부산/경남, 광주/전라, 제주, 기타)
    @GetMapping("/region")
    public ResponseEntity<List<VenueDto>> getVenuesByRegion(@RequestParam String region, @RequestParam Integer genreId) {
        System.out.println("🔍 권역별 공연장 조회 요청 - region 권역: " + region);
        List<VenueDto> venues = venueService.getVenuesByRegion(region, genreId);
        System.out.println("venues performanceCount : " + venues.get(0).toString());
        System.out.println("✅ 조회된 공연장 수: " + venues.size());
        return ResponseEntity.ok(venues);
    }

    // 모든 지역 목록 조회 (중복 제거)
    @GetMapping("/areas")
    public ResponseEntity<List<String>> getAllAreas() {
        System.out.println("🔍 지역 목록 조회 요청 받음");
        List<String> areas = venueService.getAllAreas();
        System.out.println("✅ 조회된 지역 수: " + areas.size());
        System.out.println("📍 지역 목록: " + areas);
        return ResponseEntity.ok(areas);
    }

    // 공연장 상세정보 및 공연 목록 조회
    @GetMapping("/detail/{mt10id}")
    public ResponseEntity<VenueDetailResponseDto> getVenueDetail(
            @PathVariable String mt10id,
            @RequestParam(required = false) Integer genreId,
            @RequestParam(required = false) String region) {
        System.out.println("🔍 공연장 상세정보 조회 요청 - mt10id: " + mt10id + ", genreId: " + genreId + ", region: " + region);
        VenueDetailResponseDto detail = venueService.getVenueDetail(mt10id, genreId, region);
        System.out.println("✅ 공연장 상세정보 조회 완료 - " + detail.getVenue().getFcltynm() + ", 공연 수: " + detail.getPerformances().size());
        return ResponseEntity.ok(detail);
    }

    // 특정 공연장 조회
    @GetMapping("/{venueId}")
    public ResponseEntity<Venue> getVenueById(@PathVariable Long venueId) {
        Venue venue = venueService.getVenueById(venueId);
        return ResponseEntity.ok(venue);
    }

    // 공연장 생성
    @PostMapping
    public ResponseEntity<Venue> createVenue(@RequestBody Venue venue) {
        Venue createdVenue = venueService.createVenue(venue);
        return ResponseEntity.status(HttpStatus.CREATED).body(createdVenue);
    }

    // 공연장 수정
    @PutMapping("/{venueId}")
    public ResponseEntity<Venue> updateVenue(@PathVariable Long venueId, @RequestBody Venue venue) {
        Venue updatedVenue = venueService.updateVenue(venueId, venue);
        return ResponseEntity.ok(updatedVenue);
    }

    // 공연장 삭제
    @DeleteMapping("/{venueId}")
    public ResponseEntity<Void> deleteVenue(@PathVariable Long venueId) {
        venueService.deleteVenue(venueId);
        return ResponseEntity.noContent().build();
    }
}