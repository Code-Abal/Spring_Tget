package com.ssafy.tigetting.user.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateResponse {
    private String message;
    private String email;
    private String name;
    private String phone;
}
