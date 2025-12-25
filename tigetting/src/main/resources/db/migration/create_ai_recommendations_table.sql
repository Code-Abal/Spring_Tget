-- AI 추천 결과 저장 테이블
CREATE TABLE IF NOT EXISTS ai_recommendations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genre_id INT NULL COMMENT '장르 ID (NULL=home/전체, 1=클래식, 2=콘서트, 3=뮤지컬, 4=연극)',
    mt20id VARCHAR(100) NOT NULL COMMENT '추천 공연 ID',
    rank_order INT NOT NULL COMMENT '추천 순위 (1~500 for home, 1~100 for others)',
    generated_at DATETIME NOT NULL COMMENT '생성 시각',
    INDEX idx_genre_id (genre_id),
    INDEX idx_genre_rank (genre_id, rank_order),
    INDEX idx_generated_at (generated_at),
    CONSTRAINT fk_ai_recommendation_genre FOREIGN KEY (genre_id) REFERENCES genres(genreid)
);
