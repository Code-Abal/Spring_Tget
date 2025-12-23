package com.ssafy.tigetting.venue.service;

import com.ssafy.tigetting.venue.dto.VenueRequest;
import com.ssafy.tigetting.venue.dto.VenueDto;
import com.ssafy.tigetting.venue.mapper.VenueMapper;
import com.ssafy.tigetting.venue.entity.Venue;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class VenueService {

    private final VenueMapper venueMapper;

    // 모든 공연장 조회
    public List<Venue> getAllVenues() {
        return venueMapper.findAll();
    }

    // 지역별 공연장 조회 (sidonm 기준)
    public List<VenueDto> getVenuesByArea(String area) {
        return venueMapper.findByArea(area);
    }

    // 권역별 공연장 조회 (공연 개수가 1개 이상인 경우만)
    public List<VenueDto> getVenuesByRegion(String region, Integer genreId) {
        return venueMapper.findByRegion(region, genreId);
    }

    // 모든 지역 목록 조회
    public List<String> getAllAreas() {
        return venueMapper.findAllAreas();
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