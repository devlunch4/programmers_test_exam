--코딩테스트 연습>GROUP BY>입양 시각 구하기(1)

-- MySQL 코드를 입력하세요
SELECT HOUR(datetime) hour, COUNT(datetime) count
FROM animal_outs
WHERE HOUR(datetime) BETWEEN 9 AND 19
GROUP BY HOUR(datetime)
ORDER BY HOUR(datetime);

-- Oracle 코드를 입력하세요
SELECT TO_CHAR(datetime, 'HH24') hour, COUNT(datetime) count
FROM animal_outs
WHERE TO_CHAR(datetime, 'HH24') BETWEEN 9 AND 19
GROUP BY TO_CHAR(datetime, 'HH24')
ORDER BY TO_CHAR(datetime, 'HH24');
