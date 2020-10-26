--코딩테스트 연습>GROUP BY>입양 시각 구하기(2)

-- MySQL 코드를 입력하세요1
-- set을 활용하여 리스트를 생성.
SET @HOUR_LIST = -1; 
SELECT 
(@HOUR_LIST := @HOUR_LIST + 1) AS hour, 
(SELECT COUNT(*) FROM animal_outs WHERE HOUR(datetime) = @HOUR_LIST) AS count
FROM animal_outs
WHERE @HOUR_LIST < 23
ORDER BY hour;

-- MySQL 코드를 입력하세요2
-- GROUP BY 활용
SELECT H1.HOUR, IFNULL(OUTS.COUNT,0) AS COUNT
FROM (SELECT 0 AS HOUR
      UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4
      UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8
      UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION SELECT 12
      UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16
      UNION SELECT 17 UNION SELECT 18 UNION SELECT 19 UNION SELECT 20
      UNION SELECT 21 UNION SELECT 22 UNION SELECT 23 ) AS H1
LEFT JOIN (SELECT HOUR(DATETIME) AS 'HOUR', COUNT(*) AS COUNT
           FROM ANIMAL_OUTS
           GROUP BY HOUR) AS OUTS 
ON H1.HOUR = OUTS.HOUR;

--
--

-- Oracle 코드를 입력하세요
SELECT a.hour, count(b.datetime) AS count
FROM (SELECT LEVEL-1 AS hour
      FROM dual
      CONNECT BY LEVEL <=24) a
LEFT JOIN animal_outs b
ON a.hour = TO_CHAR(b.datetime,'HH24')
GROUP BY a.hour
ORDER BY a.hour;
