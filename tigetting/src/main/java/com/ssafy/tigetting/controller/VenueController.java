package com.ssafy.tigetting.controller;

import com.ssafy.tigetting.dto.VenueDto;
import lombok.RequiredArgsConstructor;
import com.ssafy.tigetting.service.VenueService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * VenueController
 * 
 * NOTE: 이 컨트롤러는 기존 Venue Entity 구조에 맞춰 작성되었습니다.
 * tget 스키마 기반 구현으로 변경이 필요합니다.
 * 현재는 컴파일 오류 방지를 위해 주석 처리되어 있습니다.
 */
@RestController
@RequestMapping("/api/venues")
@RequiredArgsConstructor
public class VenueController {

    private final VenueService venueService;

    /*
     * // 모든 공연장 조회
     * 
     * @GetMapping
     * public ResponseEntity<List<VenueDto>> getAllVenues() {
     * List<VenueDto> venues = venueService.getAllVenues();
     * return ResponseEntity.ok(venues);
     * }
     * 
     * // 특정 공연장 조회
     * 
     * @GetMapping("/{venueId}")
     * public ResponseEntity<VenueDto> getVenueById(@PathVariable Long venueId) {
     * VenueDto venue = venueService.getVenueById(venueId);
     * return ResponseEntity.ok(venue);
     * }
     * 
     * // 공연장 생성
     * 
     * @PostMapping
     * public ResponseEntity<VenueDto> createVenue(@RequestBody VenueDto venueDto) {
     * VenueDto createdVenue = venueService.createVenue(venueDto);
     * return ResponseEntity.status(HttpStatus.CREATED).body(createdVenue);
     * }
     * 
     * // 공연장 수정
     * 
     * @PutMapping("/{venueId}")
     * public ResponseEntity<VenueDto> updateVenue(@PathVariable Long
     * venueId, @RequestBody VenueDto venueDto) {
     * VenueDto updatedVenue = venueService.updateVenue(venueId, venueDto);
     * return ResponseEntity.ok(updatedVenue);
     * }
     * 
     * // 공연장 삭제
     * 
     * @DeleteMapping("/{venueId}")
     * public ResponseEntity<Void> deleteVenue(@PathVariable Long venueId) {
     * venueService.deleteVenue(venueId);
     * return ResponseEntity.noContent().build();
     * }
     */
}
