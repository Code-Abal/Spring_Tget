-- 이메일 인증 테이블
CREATE TABLE IF NOT EXISTS email_verifications (
    email VARCHAR(255) PRIMARY KEY COMMENT '이메일',
    verification_code VARCHAR(10) NOT NULL COMMENT '인증 코드',
    expiry_time DATETIME NOT NULL COMMENT '만료 시간',
    verified BOOLEAN DEFAULT FALSE COMMENT '인증 완료 여부',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '생성 시간',
    INDEX idx_expiry_time (expiry_time),
    INDEX idx_verified (verified)
);
