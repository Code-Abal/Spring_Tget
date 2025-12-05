DROP DATABASE IF EXISTS Tget;
CREATE DATABASE Tget;
use Tget;
-- 모든 테이블 삭제
DROP TABLE IF EXISTS performance_styurls CASCADE;
DROP TABLE IF EXISTS performance_details CASCADE;
DROP TABLE IF EXISTS performances CASCADE;
DROP TABLE IF EXISTS venue_details CASCADE;
DROP TABLE IF EXISTS venues CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS seats CASCADE;
DROP TABLE IF EXISTS prices CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS roles CASCADE;
DROP TABLE IF EXISTS users_performances CASCADE;

-- DROP TABLE IF EXISTS  CASCADE;

-- 공연장이랑 공연장상세 테이블이랑 같은 1:1(?)이라서 합치는 게 더 나아보임.

-- 장르 테이블 
CREATE TABLE genres (
    genreid INT PRIMARY KEY COMMENT '장르 ID',
    genrenm VARCHAR(50) NOT NULL COMMENT '장르명'
);

-- 좌석 가격 테이블
CREATE TABLE prices (
	seatid INT PRIMARY KEY COMMENT '좌석 ID',
	price INT NOT NULL COMMENT '가격'
);

-- 공연별 좌석 정보 테이블
CREATE TABLE seats (
	mt20id VARCHAR(255) PRIMARY KEY COMMENT '공연 ID(FK)',
	seatid INT NOT NULL COMMENT '좌석 번호',
    
	CONSTRAINT fk_seat_price FOREIGN KEY (seatid) REFERENCES prices(seatid)
);

-- 공연장 기본 정보 테이블
CREATE TABLE venues (
    mt10id VARCHAR(100) PRIMARY KEY COMMENT '공연장 ID',
    fcltynm VARCHAR(255) NOT NULL COMMENT '공연장명',
    mt13cnt INT DEFAULT 0 COMMENT '공연장 내 공연장 수',
    fcltychartr VARCHAR(100) COMMENT '시설 특성',
    sidonm VARCHAR(50) COMMENT '시도명',
    gugunnm VARCHAR(50) COMMENT '구군명'
);

-- 공연장 상세 정보 테이블 (1:1 관계)
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
    -- seatid INT COMMENT '좌석 id',
    
    CONSTRAINT fk_performance_genre FOREIGN KEY (genreid) REFERENCES genres(genreid),
    CONSTRAINT fk_performance_venue FOREIGN KEY (mt10id) REFERENCES venues(mt10id)
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

-- 공연 스틸이미지 테이블 (1:N 관계)
CREATE TABLE performance_styurls (
    mt20id VARCHAR(100) NOT NULL COMMENT '공연 ID',
    styurl VARCHAR(500) NOT NULL COMMENT '스틸이미지 URL',
    
    CONSTRAINT fk_styurl_performance 
        FOREIGN KEY (mt20id) REFERENCES performances(mt20id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 회원 권한 테이블
CREATE TABLE roles (
	roleid INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 회원 정보 테이블
CREATE TABLE users (
	userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '기본 생성 id',
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL, -- 스프링에서 encoding 돼서 처리.
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    roleid INT NOT NULL,
    
    CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES roles(roleid)
);

-- 회원 공연 내역 테이블
CREATE TABLE users_performances (
	userid INT PRIMARY KEY COMMENT '기본 생성 id',
    mt20id VARCHAR(100) NOT NULL COMMENT '공연 ID',
    
    CONSTRAINT fk_user_performance_performance FOREIGN KEY (mt20id) REFERENCES performances(mt20id),
    CONSTRAINT fk_user_performance_user FOREIGN KEY (userid) REFERENCES users(userid)
);

-- 인덱스 생성 (조회 성능 향상)
CREATE INDEX idx_perf_genre ON performances(genreid);
CREATE INDEX idx_perf_venue ON performances(mt10id);
CREATE INDEX idx_perf_state ON performances(prfstate);
CREATE INDEX idx_perf_date ON performances(prfpdfrom, prfpdto);