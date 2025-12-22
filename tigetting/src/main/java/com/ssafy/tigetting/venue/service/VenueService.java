package com.ssafy.tigetting.venue.service;

import com.ssafy.tigetting.dto.tget.VenueDto;
import com.ssafy.tigetting.mapper.VenueMapper;
import com.ssafy.tigetting.venue.entity.Venue;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class VenueService {

    private final VenueMapper venueMapper;

    // 모든 공연장 조회
    public List<Venue> getAllVenues() {
        return venueMapper.findAll().stream()
                .map(this::convertToDto)
                .collect(Collectors.toList());
    }

    // 지역별 공연장 조회
    public List<VenueDto> getVenuesByArea(String area) {
        return venueMapper.findByArea(area);
    }

    // 모든 지역 목록 조회
    public List<String> getAllAreas() {
        return venueMapper.findAllAreas();
    }

    // 공연장 ID로 조회
    public Venue getVenueById(Long venueId) {
        Venue venue = venueMapper.findById(venueId)
                .orElseThrow(() -> new RuntimeException("Venue not found with id: " + venueId));
        return convertToDto(venue);
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
        return convertToDto(venue);
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
        return convertToDto(venue);
    }

    // 공연장 삭제
    @Transactional
    public void deleteVenue(Long venueId) {
        if (!venueMapper.existsById(venueId)) {
            throw new RuntimeException("Venue not found with id: " + venueId);
        }
        venueMapper.deleteById(venueId);
    }

    // Entity를 DTO로 변환
    private Venue convertToDto(Venue venue) {
        return Venue.builder()
                .venueId(venue.getVenueId())
                .venueName(venue.getVenueName())
                .address(venue.getAddress())
                .description(venue.getDescription())
                .totalCapacity(venue.getTotalCapacity())
                .contact(venue.getContact())
                .build();
    }
}