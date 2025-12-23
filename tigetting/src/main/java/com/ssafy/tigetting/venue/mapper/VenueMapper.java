package com.ssafy.tigetting.venue.mapper;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.tigetting.venue.dto.VenueRequest;
import com.ssafy.tigetting.venue.dto.VenueDto;
import com.ssafy.tigetting.venue.entity.Venue;

@Mapper
public interface VenueMapper {
    void save(Venue venue);

    void update(Venue venue);

    Optional<Venue> findById(Long id);

    List<Venue> findAll();

    List<VenueDto> findByArea(String area);

    List<VenueDto> findByRegion(VenueRequest request);

    List<String> findAllAreas();

    List<String> findAreasByKeyword(String keyword);

    void deleteById(Long id);

    boolean existsById(Long id);

    VenueDto findByVenueId(String mt10id);
}
