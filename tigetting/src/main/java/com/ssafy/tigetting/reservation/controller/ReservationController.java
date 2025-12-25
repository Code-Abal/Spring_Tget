package com.ssafy.tigetting.reservation.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.tigetting.global.security.JwtUtil;
import com.ssafy.tigetting.reservation.dto.ReservationDto;
import com.ssafy.tigetting.reservation.dto.ReservationResponseDto;
import com.ssafy.tigetting.reservation.service.ReservationService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/reservations")
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;
    private final JwtUtil jwtUtil;

    @PostMapping
    public ResponseEntity<Void> createReservation(
            @RequestHeader("Authorization") String authHeader,
            @RequestBody ReservationDto reservationDto) {

        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);

        // TODO: Validate Queue Token here if necessary.
        // For now, we assume the user has passed the queue if they can make this
        // request.
        // In a real scenario, we should verify reservationDto.getToken() with
        // QueueService.

        reservationService.createReservation(email, reservationDto);

        return ResponseEntity.ok().build();
    }

    @GetMapping("/my")
    public ResponseEntity<List<ReservationResponseDto>> getMyReservations(
            @RequestHeader("Authorization") String authHeader) {

        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);

        List<ReservationResponseDto> reservations = reservationService.getMyReservations(email);

        return ResponseEntity.ok(reservations);
    }

    @DeleteMapping("/{reservationId}")
    public ResponseEntity<Void> cancelReservation(
            @RequestHeader("Authorization") String authHeader,
            @PathVariable Long reservationId) {

        String token = authHeader.replace("Bearer ", "");
        String email = jwtUtil.extractUsername(token);

        reservationService.cancelReservation(email, reservationId);

        return ResponseEntity.ok().build();
    }
}
