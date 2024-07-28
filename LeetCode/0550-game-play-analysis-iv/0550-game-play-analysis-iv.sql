-- 1. 처음 로그인 temp table 생성
-- 2. join 하여 fraction 계산

WITH temp AS(
    SELECT player_id, MIN(event_date) AS first_login_date
    FROM Activity
    GROUP BY player_id
)

SELECT
    ROUND(SUM(DATEDIFF(a.event_date,b.first_login_date)=1) / COUNT(DISTINCT a.player_id),2) AS fraction
FROM Activity a JOIN temp b ON a.player_id=b.player_id