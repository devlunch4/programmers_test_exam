--코딩테스트 연습>SUM, MAX, MIN>최솟값 구하기

-- MySQL 코드를 입력하세요
SELECT datetime
FROM animal_ins
WHERE datetime
= (SELECT MIN(datetime) FROM animal_ins);

-- Oracle 코드를 입력하세요
SELECT datetime
FROM animal_ins
WHERE datetime
= (SELECT MIN(datetime) FROM animal_ins);
