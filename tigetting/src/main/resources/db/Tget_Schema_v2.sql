-- Database creation handled manually
-- use Tget; commented out to use CLI argument
use Tget;

-- 모든 테이블 삭제
DROP TABLE IF EXISTS performance_styurls CASCADE;
DROP TABLE IF EXISTS performance_details CASCADE;
DROP TABLE IF EXISTS users_performances CASCADE;
DROP TABLE IF EXISTS seats CASCADE;
DROP TABLE IF EXISTS performances CASCADE;
DROP TABLE IF EXISTS venue_details CASCADE;
DROP TABLE IF EXISTS venues CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS prices CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS roles CASCADE;

-- 1. 회원 권한 테이블 (Create First)
CREATE TABLE roles (
	roleid INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. 회원 정보 테이블 (Depends on roles)
CREATE TABLE users (
	userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '기본 생성 id',
    email VARCHAR(255) NOT NULL COMMENT '이메일',
    password VARCHAR(255) NOT NULL COMMENT '비밀번호', -- 스프링에서 encoding 돼서 처리.
    name VARCHAR(255) NOT NULL COMMENT '이름',
    phone VARCHAR(50) NOT NULL COMMENT '전화번호',
    roleid INT NOT NULL COMMENT '권한',
    register DATETIME NOT NULL COMMENT '가입일',

    CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES roles(roleid)
);

-- 3. 장르 테이블
CREATE TABLE genres (
    genreid INT PRIMARY KEY COMMENT '장르 ID',
    genrenm VARCHAR(50) NOT NULL COMMENT '장르명'
);

-- 4. 좌석 가격 테이블
CREATE TABLE prices (
	seatid INT PRIMARY KEY COMMENT '좌석 ID',
	price INT NOT NULL COMMENT '가격'
);

-- 5. 공연별 좌석 정보 테이블 (Depends on prices)
-- 공연별 좌석 정보 테이블
CREATE TABLE seats (
	mt20id VARCHAR(255) PRIMARY KEY COMMENT '공연 ID(FK)',
	seatid INT NOT NULL COMMENT '좌석 번호',
    
	CONSTRAINT fk_seat_price FOREIGN KEY (seatid) REFERENCES prices(seatid)
);

-- 6. 공연장 기본 정보 테이블
CREATE TABLE venues (
    mt10id VARCHAR(100) PRIMARY KEY COMMENT '공연장 ID',
    fcltynm VARCHAR(255) NOT NULL COMMENT '공연장명',
    mt13cnt INT DEFAULT 0 COMMENT '공연장 내 공연장 수',
    fcltychartr VARCHAR(100) COMMENT '시설 특성',
    sidonm VARCHAR(50) COMMENT '시도명',
    gugunnm VARCHAR(50) COMMENT '구군명',
    la DECIMAL(10, 7) COMMENT '위도',
    lo DECIMAL(10, 7) COMMENT '경도',
    region VARCHAR(20) COMMENT '권역'
);

-- 7. 공연장 상세 정보 테이블 (Depends on venues)
CREATE TABLE venue_details (
    mt10id VARCHAR(100) PRIMARY KEY COMMENT '공연장 ID',
    adres VARCHAR(500) COMMENT '주소',
    telno VARCHAR(50) COMMENT '전화번호',
    la DECIMAL(10, 7) COMMENT '위도',
    lo DECIMAL(10, 7) COMMENT '경도',
    seatscale INT COMMENT '좌석수',
    
    CONSTRAINT fk_venue_detail_venue 
        FOREIGN KEY (mt10id) REFERENCES venues(mt10id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 공연 기본 정보 테이블
CREATE TABLE performances (
    mt20id VARCHAR(100) PRIMARY KEY COMMENT '공연 ID',
    prfnm VARCHAR(255) NOT NULL COMMENT '공연명',
    prfpdfrom DATE NOT NULL COMMENT '공연 시작일',
    prfpdto DATE NOT NULL COMMENT '공연 종료일',
    fcltynm VARCHAR(255) COMMENT '공연장명',
    poster VARCHAR(500) COMMENT '포스터 URL',
    area VARCHAR(50) COMMENT '지역',
    genreid INT COMMENT '장르 ID',
    prfstate VARCHAR(20) COMMENT '공연 상태',
    mt10id VARCHAR(100) COMMENT '공연장 ID',
    userid INT COMMENT '회원번호',
    poster_image MEDIUMBLOB NULL COMMENT '업로드된 포스터 이미지',
    poster_type VARCHAR(50) NULL COMMENT '이미지 MIME 타입',
    user_id INT NULL, -- Added column from ALTER table
    
    CONSTRAINT fk_performance_genre FOREIGN KEY (genreid) REFERENCES genres(genreid),
    CONSTRAINT fk_performance_venue FOREIGN KEY (mt10id) REFERENCES venues(mt10id),
    CONSTRAINT fk_performance_user FOREIGN KEY (userid) REFERENCES users(userid)
);

-- 공연 상세 정보 테이블 (1:1 관계)
CREATE TABLE performance_details (
    mt20id VARCHAR(100) PRIMARY KEY COMMENT '공연 ID',
    prfcast VARCHAR(2000) COMMENT '출연진',
    prfcrew VARCHAR(2000) COMMENT '제작진',
    prfruntime VARCHAR(50) COMMENT '런타임',
    prfage VARCHAR(50) COMMENT '관람 연령',
    pcseguidance VARCHAR(500) COMMENT '가격 정보',
    sty TEXT COMMENT '줄거리',
    updatedate DATE COMMENT '최종 수정일',
    dtguidance VARCHAR(500) COMMENT '공연 시간 안내',
    
    CONSTRAINT fk_performance_detail_performance 
        FOREIGN KEY (mt20id) REFERENCES performances(mt20id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 10. 공연 스틸이미지 테이블 (Depends on performances)
CREATE TABLE performance_styurls (
    mt20id VARCHAR(100) NOT NULL COMMENT '공연 ID',
    styurl VARCHAR(500) NOT NULL COMMENT '스틸이미지 URL',
    
    CONSTRAINT fk_styurl_performance 
        FOREIGN KEY (mt20id) REFERENCES performances(mt20id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 회원 공연 내역 테이블
CREATE TABLE users_performances (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '내역 ID',
    userid INT NOT NULL COMMENT '사용자 ID',
    mt20id VARCHAR(100) NOT NULL COMMENT '공연 ID',
    genreid INT COMMENT '장르 ID (비정규화 - AI 추천용)',
    view_date DATETIME NOT NULL COMMENT '관람일',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
    
    CONSTRAINT fk_user_performance_user FOREIGN KEY (userid) REFERENCES users(userid) ON DELETE CASCADE,
    CONSTRAINT fk_user_performance_performance FOREIGN KEY (mt20id) REFERENCES performances(mt20id) ON DELETE CASCADE,
    CONSTRAINT fk_user_performance_genre FOREIGN KEY (genreid) REFERENCES genres(genreid),
    
    INDEX idx_user_performances_user (userid),
    INDEX idx_user_performances_date (view_date)
);

-- Create queue_tokens table
CREATE TABLE IF NOT EXISTS `queue_tokens` (
  `token_id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `performance_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_in_queue` int DEFAULT NULL,
  `estimated_wait_time` int DEFAULT NULL,
  `issued_at` datetime(6) NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `activated_at` datetime(6) DEFAULT NULL,
  `used_at` datetime(6) DEFAULT NULL,
  `booking_expires_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `uk_token` (`token`),
  KEY `idx_user_performance` (`user_id`,`performance_id`),
  KEY `idx_performance_status_issued` (`performance_id`,`status`,`issued_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS ai_recommendations 
( id INT AUTO_INCREMENT PRIMARY KEY, genre_id INT NULL COMMENT '장르 ID (NULL=home/전체, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)', 
mt20id VARCHAR(100) NOT NULL COMMENT '추천 공연 ID', 
rank_order INT NOT NULL COMMENT '추천 순위 (1~500 for home, 1~100 for others)', 
generated_at DATETIME NOT NULL COMMENT '생성 시각', INDEX idx_genre_id (genre_id), 
INDEX idx_genre_rank (genre_id, rank_order), INDEX idx_generated_at (generated_at) );

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

-- 인덱스 생성 (조회 성능 향상)
CREATE INDEX idx_perf_genre ON performances(genreid);
CREATE INDEX idx_perf_venue ON performances(mt10id);
CREATE INDEX idx_perf_state ON performances(prfstate);
CREATE INDEX idx_perf_date ON performances(prfpdfrom, prfpdto);