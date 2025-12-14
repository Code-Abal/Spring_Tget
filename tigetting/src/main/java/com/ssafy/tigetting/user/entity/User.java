package com.ssafy.tigetting.user.entity;

import java.time.LocalDateTime;
import java.util.List;

import com.ssafy.tigetting.entity.Booking;
import com.ssafy.tigetting.entity.SeatLock;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
    private Long userId;
    private String email;
    private String password;
    private String name;
    private String phone;
    private Role role;

    private LocalDateTime lastLogin;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private List<Booking> bookings;

    private List<SeatLock> seatLocks;

}
