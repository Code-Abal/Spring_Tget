package com.ssafy.tigetting.global.exception;

import org.springframework.http.HttpStatus;

public enum ErrorCode {
    // AUTH
    AUTH_FAILED(HttpStatus.UNAUTHORIZED, "AUTH_001", "이메일 또는 비밀번호가 올바르지 않습니다"),
    ADMIN_ACCESS_DENIED(HttpStatus.FORBIDDEN, "AUTH_002", "관리자 권한이 필요합니다"),
    TOKEN_INVALID(HttpStatus.UNAUTHORIZED, "AUTH_003", "유효하지 않은 토큰입니다"),
    EMAIL_DUPLICATED(HttpStatus.BAD_REQUEST, "AUTH_004", "이미 가입된 이메일입니다"),

    // PERFORMANCE 관련 오류들
    PERFORMANCE_NOT_FOUND(HttpStatus.NOT_FOUND, "PERFORMANCE_001", "해당 공연을 찾을 수 없습니다"),
    PERFORMANCE_CREATION_FAILED(HttpStatus.BAD_REQUEST, "PERFORMANCE_002", "공연 생성에 실패했습니다"),
    PERFORMANCE_UPDATE_FAILED(HttpStatus.BAD_REQUEST, "PERFORMANCE_003", "공연 업데이트에 실패했습니다"),
    IMAGE_PROCESSING_FAILED(HttpStatus.BAD_REQUEST, "PERFORMANCE_004", "이미지 처리 중 오류가 발생했습니다"),
    POSTER_NOT_FOUND(HttpStatus.NOT_FOUND, "PERFORMANCE_005", "포스터를 찾을 수 없습니다"),


    // USER
    USER_NOT_FOUND(HttpStatus.NOT_FOUND, "USER_005", "존재하지 않는 사용자입니다"),
    PASSWORD_MISMATCH(HttpStatus.BAD_REQUEST, "USER_006", "비밀번호가 일치하지 않습니다"),
    INVALID_PASSWORD(HttpStatus.BAD_REQUEST, "USER_007", "현재 비밀번호가 올바르지 않습니다"),

    // COMMON
    INVALID_REQUEST(HttpStatus.BAD_REQUEST, "COMMON_001", "잘못된 요청입니다"),
    INTERNAL_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "COMMON_500", "서버 오류가 발생했습니다");

    private final HttpStatus status;
    private final String code;
    private final String message;

    ErrorCode(HttpStatus status, String code, String message) {
        this.status = status;
        this.code = code;
        this.message = message;
    }

    public HttpStatus getStatus() {
        return status;
    }

    public String getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
