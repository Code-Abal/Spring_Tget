-- 더 간단한 버전: 수동으로 rank_order 지정
-- 실제 존재하는 공연 ID로 테스트 데이터 생성

-- 먼저 기존 AI 추천 데이터 삭제
DELETE FROM ai_recommendations;

-- 클래식 추천 (장르 1)
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 1, mt20id, 1, NOW() FROM performances WHERE genreid = 1 LIMIT 1 OFFSET 0
UNION ALL
SELECT 1, mt20id, 2, NOW() FROM performances WHERE genreid = 1 LIMIT 1 OFFSET 1
UNION ALL
SELECT 1, mt20id, 3, NOW() FROM performances WHERE genreid = 1 LIMIT 1 OFFSET 2
UNION ALL
SELECT 1, mt20id, 4, NOW() FROM performances WHERE genreid = 1 LIMIT 1 OFFSET 3;

-- 콘서트 추천 (장르 2)
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 2, mt20id, 1, NOW() FROM performances WHERE genreid = 2 LIMIT 1 OFFSET 0
UNION ALL
SELECT 2, mt20id, 2, NOW() FROM performances WHERE genreid = 2 LIMIT 1 OFFSET 1
UNION ALL
SELECT 2, mt20id, 3, NOW() FROM performances WHERE genreid = 2 LIMIT 1 OFFSET 2
UNION ALL
SELECT 2, mt20id, 4, NOW() FROM performances WHERE genreid = 2 LIMIT 1 OFFSET 3;

-- 뮤지컬 추천 (장르 3)
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 3, mt20id, 1, NOW() FROM performances WHERE genreid = 3 LIMIT 1 OFFSET 0
UNION ALL
SELECT 3, mt20id, 2, NOW() FROM performances WHERE genreid = 3 LIMIT 1 OFFSET 1
UNION ALL
SELECT 3, mt20id, 3, NOW() FROM performances WHERE genreid = 3 LIMIT 1 OFFSET 2
UNION ALL
SELECT 3, mt20id, 4, NOW() FROM performances WHERE genreid = 3 LIMIT 1 OFFSET 3;

-- 연극 추천 (장르 4)
INSERT INTO ai_recommendations (genre_id, mt20id, rank_order, generated_at)
SELECT 4, mt20id, 1, NOW() FROM performances WHERE genreid = 4 LIMIT 1 OFFSET 0
UNION ALL
SELECT 4, mt20id, 2, NOW() FROM performances WHERE genreid = 4 LIMIT 1 OFFSET 1
UNION ALL
SELECT 4, mt20id, 3, NOW() FROM performances WHERE genreid = 4 LIMIT 1 OFFSET 2
UNION ALL
SELECT 4, mt20id, 4, NOW() FROM performances WHERE genreid = 4 LIMIT 1 OFFSET 3;

-- 확인
SELECT genre_id, COUNT(*) as count FROM ai_recommendations GROUP BY genre_id;
