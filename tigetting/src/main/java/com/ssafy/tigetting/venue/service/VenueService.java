package com.ssafy.tigetting.venue.service;

import com.ssafy.tigetting.venue.dto.VenueRequest;
import com.ssafy.tigetting.venue.dto.VenueDto;
import com.ssafy.tigetting.venue.dto.VenueDetailResponseDto;
import com.ssafy.tigetting.venue.mapper.VenueMapper;
import com.ssafy.tigetting.venue.entity.Venue;
import com.ssafy.tigetting.mapper.PerformanceMapper;
import com.ssafy.tigetting.performance.dto.PerformanceDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class VenueService {

    private final VenueMapper venueMapper;
    private final PerformanceMapper performanceMapper;

    // 모든 공연장 조회
    public List<Venue> getAllVenues() {
        return venueMapper.findAll();
    }

    // 지역별 공연장 조회 (sidonm 기준)
    public List<VenueDto> getVenuesByArea(String area) {
        return venueMapper.findByArea(area);
    }

    // 권역별 공연장 조회 (공연 개수가 1개 이상인 경우만) - genreId optional
    public List<VenueDto> getVenuesByRegion(String region, Integer genreId) {
        VenueRequest venueRequest = new VenueRequest(region, genreId);
        return venueMapper.findByRegion(venueRequest);
    }

    // 모든 지역 목록 조회
    public List<String> getAllAreas() {
        return venueMapper.findAllAreas();
    }

    // 공연장 상세정보 및 공연 목록 조회
    public VenueDetailResponseDto getVenueDetail(String mt10id, Integer genreId, String region) {
        System.out.println("🔍 공연장 상세정보 조회 - mt10id: " + mt10id + ", genreId: " + genreId + ", region: " + region);

        // 공연장 정보 조회
        VenueDto venue = venueMapper.findByVenueId(mt10id);
        if (venue == null) {
            throw new RuntimeException("공연장을 찾을 수 없습니다. mt10id: " + mt10id);
        }

        System.out.println("✅ 공연장 정보: " + venue.getFcltynm());

        // 해당 공연장의 공연 목록 조회 (필터 적용)
        List<PerformanceDto> performances = performanceMapper.findByVenueIdAndFilters(mt10id, genreId, region);

        System.out.println("✅ 공연장 상세정보 조회 완료 - " + venue.getFcltynm() + ", 공연 수: " + performances.size());

        return VenueDetailResponseDto.builder()
                .venue(venue)
                .performances(performances)
                .build();
    }

    // 공연장 ID로 조회
    public Venue getVenueById(Long venueId) {
        Venue venue = venueMapper.findById(venueId)
                .orElseThrow(() -> new RuntimeException("Venue not found with id: " + venueId));
        return venue;
    }

    // 공연장 생성
    @Transactional
    public Venue createVenue(Venue venueDto) {
        Venue venue = Venue.builder()
                .venueName(venueDto.getVenueName())
                .address(venueDto.getAddress())
                .description(venueDto.getDescription())
                .totalCapacity(venueDto.getTotalCapacity())
                .contact(venueDto.getContact())
                .build();

        venueMapper.save(venue);
        return venue;
    }

    // 공연장 수정
    @Transactional
    public Venue updateVenue(Long venueId, Venue venueDto) {
        Venue venue = venueMapper.findById(venueId)
                .orElseThrow(() -> new RuntimeException("Venue not found with id: " + venueId));

        venue.setVenueName(venueDto.getVenueName());
        venue.setAddress(venueDto.getAddress());
        venue.setDescription(venueDto.getDescription());
        venue.setTotalCapacity(venueDto.getTotalCapacity());
        venue.setContact(venueDto.getContact());

        venueMapper.update(venue);
        return venue;
    }

    // 공연장 삭제
    @Transactional
    public void deleteVenue(Long venueId) {
        if (!venueMapper.existsById(venueId)) {
            throw new RuntimeException("Venue not found with id: " + venueId);
        }
        venueMapper.deleteById(venueId);
    }

}