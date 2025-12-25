-- AI 추천 테스트 데이터 삽입
-- 먼저 공연 ID 확인 (실제 존재하는 공연 ID 사용)
-- 예시: 각 장르별로 4개씩 임시 데이터 생성

-- 기존 데이터 삭제 (Safe update mode 일시 해제)
SET SQL_SAFE_UPDATES = 0;
DELETE FROM ai_recommendations;
SET SQL_SAFE_UPDATES = 1;

-- 클래식 (genreId = 1)
SET @row_number = 0;
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 1, mt20id, (@row_number:=@row_number + 1) as rank_order, NOW()
FROM performances
WHERE genreid = 1
LIMIT 4;

-- 콘서트 (genreId = 2)
SET @row_number = 0;
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 2, mt20id, (@row_number:=@row_number + 1) as rank_order, NOW()
FROM performances
WHERE genreid = 2
LIMIT 4;

-- 뮤지컬 (genreId = 3)
SET @row_number = 0;
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 3, mt20id, (@row_number:=@row_number + 1) as rank_order, NOW()
FROM performances
WHERE genreid = 3
LIMIT 4;

-- 연극 (genreId = 4)
SET @row_number = 0;
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 4, mt20id, (@row_number:=@row_number + 1) as rank_order, NOW()
FROM performances
WHERE genreid = 4
LIMIT 4;

-- 메인 페이지용 (genre_id = NULL, 전체 장르 혼합)
SET @row_number = 0;
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT NULL, mt20id, (@row_number:=@row_number + 1) as rank_order, NOW()
FROM (
    (SELECT mt20id FROM performances WHERE genreid = 1 LIMIT 4)
    UNION ALL
    (SELECT mt20id FROM performances WHERE genreid = 2 LIMIT 4)
    UNION ALL
    (SELECT mt20id FROM performances WHERE genreid = 3 LIMIT 4)
    UNION ALL
    (SELECT mt20id FROM performances WHERE genreid = 4 LIMIT 4)
) as combined;

-- 확인
SELECT genre_id, COUNT(*) as count FROM ai_recommendations GROUP BY genre_id;
