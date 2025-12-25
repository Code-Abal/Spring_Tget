package com.ssafy.tigetting.reservation.mapper;

import java.util.List;

import com.ssafy.tigetting.reservation.entity.ReservationEntity;
import com.ssafy.tigetting.reservation.entity.ReservationStatus;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ReservationMapper {

    /* 예약 생성 (좌석 1개) */
    int insertReservation(ReservationEntity reservation);

    /* 예약 그룹 조회 (마이페이지용) */
    List<ReservationEntity> findByReservationGroupId(@Param("groupId") Long groupId);

    /* 회원 예약 목록 */
    List<ReservationEntity> findByUserId(@Param("userId") int userId);

    /* 예약 상태 변경 (전체 취소) */
    int updateStatusByGroupId(
            @Param("groupId") Long groupId,
            @Param("status") ReservationStatus status);
}