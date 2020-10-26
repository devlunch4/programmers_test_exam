--코딩테스트 연습>GROUP BY>입양 시각 구하기(2)

-- MySQL 코드를 입력하세요
-- set을 활용하여 리스트를 생성.
SET @HOUR_LIST = -1; 
SELECT 
(@HOUR_LIST := @HOUR_LIST + 1) AS hour, 
(SELECT COUNT(*) FROM animal_outs WHERE HOUR(datetime) = @HOUR_LIST) AS count
FROM animal_outs
WHERE @HOUR_LIST < 23
ORDER BY hour;



-- Oracle 코드를 입력하세요
SELECT a.hour, count(b.datetime) AS count
FROM (SELECT LEVEL-1 AS hour
      FROM dual
      CONNECT BY LEVEL <=24) a
LEFT JOIN animal_outs b
ON a.hour = TO_CHAR(b.datetime,'HH24')
GROUP BY a.hour
ORDER BY a.hour;
