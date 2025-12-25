package com.ssafy.tigetting.venue.controller;

import java.util.List;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.ssafy.tigetting.venue.dto.VenueDto;
import com.ssafy.tigetting.venue.dto.VenueDetailResponseDto;
import com.ssafy.tigetting.venue.entity.Venue;
import com.ssafy.tigetting.venue.service.VenueService;

import lombok.RequiredArgsConstructor;

@Tag(name = "Venues", description = "공연장 정보 API")
@RestController
@RequestMapping("/api/venues")
@RequiredArgsConstructor
public class VenueController {

    private final VenueService venueService;

    @Operation(summary = "전체 공연장 조회",
               description = "등록된 모든 공연장 목록을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    @GetMapping
    public ResponseEntity<List<Venue>> getAllVenues() {
        List<Venue> venues = venueService.getAllVenues();
        return ResponseEntity.ok(venues);
    }

    @Operation(summary = "권역별 공연장 조회",
               description = "특정 권역의 공연장 목록을 조회합니다. 장르 필터링도 가능합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    @GetMapping("/region")
    public ResponseEntity<List<VenueDto>> getVenuesByRegion(
            @Parameter(description = "권역 (서울, 경기/인천, 충청/강원, 대구/경북, 부산/경남, 광주/전라, 제주, 기타)", required = true)
            @RequestParam String region,
            @Parameter(description = "장르 ID (선택사항)", required = false)
            @RequestParam(required = false) Integer genreId) {
        System.out.println("🔍 권역별 공연장 조회 요청 - region 권역: " + region);
        List<VenueDto> venues = venueService.getVenuesByRegion(region, genreId);
        //System.out.println("venues performanceCount : " + venues.get(0).toString());
        System.out.println("✅ 조회된 공연장 수: " + venues.size());
        return ResponseEntity.ok(venues);
    }

    @Operation(summary = "전체 지역 목록 조회",
               description = "중복 제거된 모든 지역 목록을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공")
    })
    @GetMapping("/areas")
    public ResponseEntity<List<String>> getAllAreas() {
        System.out.println("🔍 지역 목록 조회 요청 받음");
        List<String> areas = venueService.getAllAreas();
        System.out.println("✅ 조회된 지역 수: " + areas.size());
        System.out.println("📍 지역 목록: " + areas);
        return ResponseEntity.ok(areas);
    }

    @Operation(summary = "공연장 상세 정보 조회",
               description = "공연장의 상세 정보와 해당 공연장에서 진행되는 공연 목록을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "404", description = "공연장을 찾을 수 없음")
    })
    @GetMapping("/detail/{mt10id}")
    public ResponseEntity<VenueDetailResponseDto> getVenueDetail(
            @Parameter(description = "공연장 ID", required = true)
            @PathVariable String mt10id,
            @Parameter(description = "장르 ID (선택사항)", required = false)
            @RequestParam(required = false) Integer genreId,
            @Parameter(description = "권역 (선택사항)", required = false)
            @RequestParam(required = false) String region) {
        System.out.println("🔍 공연장 상세정보 조회 요청 - mt10id: " + mt10id + ", genreId: " + genreId + ", region: " + region);
        VenueDetailResponseDto detail = venueService.getVenueDetail(mt10id, genreId, region);
        System.out.println(
                "✅ 공연장 상세정보 조회 완료 - " + detail.getVenue().getFcltynm() + ", 공연 수: " + detail.getPerformances().size());
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