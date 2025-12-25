package com.ssafy.tigetting.mapper;

import com.ssafy.tigetting.entity.Booking;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Optional;

@Mapper
public interface BookingMapper {
    void save(Booking booking);

    void update(Booking booking);

    Optional<Booking> findById(Long id);

    List<Booking> findAll();

    List<Booking> findByUserId(Long userId);

    void deleteById(Long id);

    // ========== AI 추천 시스템 추가 메서드 ==========

    // 사용자 예매 이력 조회 (최근 10건)
    List<com.ssafy.tigetting.recommendation.dto.UserBookingHistory> selectUserBookingHistory(
            @Param("userid") Integer userid);
}
