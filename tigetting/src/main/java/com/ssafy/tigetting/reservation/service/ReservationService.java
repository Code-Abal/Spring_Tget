package com.ssafy.tigetting.reservation.service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.tigetting.reservation.dto.ReservationDto;
import com.ssafy.tigetting.reservation.dto.ReservationDto.SeatDto;
import com.ssafy.tigetting.reservation.dto.ReservationResponseDto;
import com.ssafy.tigetting.reservation.entity.ReservationEntity;
import com.ssafy.tigetting.reservation.entity.ReservationStatus;
import com.ssafy.tigetting.reservation.mapper.ReservationMapper;
import com.ssafy.tigetting.mapper.UserMapper;
import com.ssafy.tigetting.mapper.PerformanceMapper;
import com.ssafy.tigetting.performance.dto.PerformanceDto;
import com.ssafy.tigetting.user.entity.UserEntity;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReservationService {

        private final ReservationMapper reservationMapper;
        private final UserMapper userMapper;
        private final PerformanceMapper performanceMapper;

        @Transactional
        public void createReservation(String email, ReservationDto dto) {
                UserEntity user = userMapper.findByEmail(email)
                                .orElseThrow(() -> new IllegalArgumentException("사용자를 찾을 수 없습니다."));

                Long reservationGroupId = System.currentTimeMillis(); // Simple Group ID generation

                List<SeatDto> seats = dto.getSeats();
                for (SeatDto seat : seats) {
                        ReservationEntity reservation = new ReservationEntity();
                        reservation.setReservationGroupId(reservationGroupId);
                        reservation.setUserId(user.getUserId());
                        reservation.setMt20id(dto.getPerformanceId());
                        reservation.setSeatSection(seat.getSection());
                        reservation.setSeatRow(seat.getRow());
                        reservation.setSeatNumber(seat.getNumber());
                        reservation.setPrice(seat.getPrice());
                        reservation.setStatus(ReservationStatus.CONFIRMED);
                        reservation.setReservedAt(LocalDateTime.now());

                        reservationMapper.insertReservation(reservation);
                }
        }

        public List<ReservationResponseDto> getMyReservations(String email) {
                UserEntity user = userMapper.findByEmail(email)
                                .orElseThrow(() -> new IllegalArgumentException("사용자를 찾을 수 없습니다."));

                List<ReservationEntity> reservations = reservationMapper.findByUserId(user.getUserId());

                // Group by Group ID
                Map<Long, List<ReservationEntity>> grouped = reservations.stream()
                                .collect(Collectors.groupingBy(ReservationEntity::getReservationGroupId));

                return grouped.entrySet().stream()
                                .sorted((e1, e2) -> e2.getKey().compareTo(e1.getKey())) // Sort by Group ID desc (approx
                                                                                        // time desc)
                                .map(entry -> {
                                        Long groupId = entry.getKey();
                                        List<ReservationEntity> items = entry.getValue();
                                        ReservationEntity firstItem = items.get(0);

                                        // Fetch Performance Details
                                        PerformanceDto performance = performanceMapper.findById(firstItem.getMt20id())
                                                        .orElse(PerformanceDto.builder().prfnm("Unknown").build());

                                        List<String> seatList = items.stream()
                                                        .map(item -> item.getSeatSection() + " " + item.getSeatRow()
                                                                        + "열 " + item.getSeatNumber()
                                                                        + "번")
                                                        .collect(Collectors.toList());

                                        int totalPrice = items.stream().mapToInt(ReservationEntity::getPrice).sum();

                                        return ReservationResponseDto.builder()
                                                        .reservationId(String.valueOf(groupId))
                                                        .performanceId(firstItem.getMt20id())
                                                        .performanceTitle(performance.getPrfnm())
                                                        // Poster URL logic might need adjustment if it's blob related,
                                                        // using simple url
                                                        // for now or empty
                                                        .poster(performance.getPoster())
                                                        .facilityName(performance.getFcltynm())
                                                        .area(performance.getArea())
                                                        .performanceDate(
                                                                        performance.getPrfpdfrom() != null
                                                                                        ? performance.getPrfpdfrom()
                                                                                                        .toString()
                                                                                        : "") // Using
                                                                                              // start
                                                                                              // date
                                                                                              // as
                                                                                              // proxy
                                                        .performanceTime("19:00") // Dummy time
                                                        .performanceTime("19:00") // Dummy time
                                                        .reservationDate(firstItem.getReservedAt()
                                                                        .format(java.time.format.DateTimeFormatter
                                                                                        .ofPattern("yyyy-MM-dd HH:mm")))
                                                        .seats(seatList)
                                                        .totalPrice(totalPrice)
                                                        .status(firstItem.getStatus())
                                                        .category(performance.getGenreName())
                                                        .build();
                                })
                                .collect(Collectors.toList());
        }

        @Transactional
        public void cancelReservation(String email, Long reservationGroupId) {
                UserEntity user = userMapper.findByEmail(email)
                                .orElseThrow(() -> new IllegalArgumentException("사용자를 찾을 수 없습니다."));

                List<ReservationEntity> reservations = reservationMapper.findByReservationGroupId(reservationGroupId);
                if (reservations.isEmpty()) {
                        throw new IllegalArgumentException("예약 정보를 찾을 수 없습니다.");
                }

                // Verify ownership
                if (!reservations.get(0).getUserId().equals(user.getUserId())) {
                        throw new IllegalArgumentException("권한이 없습니다.");
                }

                reservationMapper.updateStatusByGroupId(reservationGroupId, ReservationStatus.CANCELLED);
        }
}
