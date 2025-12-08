package com.ssafy.tigetting.mapper;

import com.ssafy.tigetting.venue.entity.Venue;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

@Mapper
public interface VenueMapper {
    void save(Venue venue);

    void update(Venue venue);

    Optional<Venue> findById(Long id);

    List<Venue> findAll();

    void deleteById(Long id);

    boolean existsById(Long id);
}
