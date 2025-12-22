package com.ssafy.tigetting.mapper;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.tigetting.dto.tget.VenueDto;
import com.ssafy.tigetting.venue.entity.Venue;

@Mapper
public interface VenueMapper {
    void save(Venue venue);

    void update(Venue venue);

    Optional<Venue> findById(Long id);

    List<Venue> findAll();

    List<VenueDto> findByArea(String area);

    List<String> findAllAreas();

    void deleteById(Long id);

    boolean existsById(Long id);
}
