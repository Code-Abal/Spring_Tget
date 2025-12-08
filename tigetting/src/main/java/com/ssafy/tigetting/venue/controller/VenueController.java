package com.ssafy.tigetting.venue.controller;

import com.ssafy.tigetting.venue.entity.Venue;
import com.ssafy.tigetting.venue.service.VenueService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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