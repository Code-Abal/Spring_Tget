package com.ssafy.tigetting.venue.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.tigetting.dto.tget.VenueDto;
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

    // 지역별 공연장 조회
    @GetMapping("/area/{area}")
    public ResponseEntity<List<VenueDto>> getVenuesByArea(@PathVariable String area) {
        System.out.println("🔍 지역별 공연장 조회 요청 - 지역: " + area);
        List<VenueDto> venues = venueService.getVenuesByArea(area);
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