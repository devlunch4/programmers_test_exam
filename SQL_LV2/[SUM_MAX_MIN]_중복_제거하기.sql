--코딩테스트 연습>SUM, MAX, MIN>중복 제거하기

-- MySQL 코드를 입력하세요 1
SELECT  COUNT(DISTINCT name) AS count
FROM animal_ins;

-- MySQL 코드를 입력하세요 2
SELECT  COUNT(a.name) AS count
FROM (SELECT * 
      FROM animal_ins
      GROUP BY name
     ) a;

--
--
--

-- Oracle 코드를 입력하세요 1
SELECT  COUNT(DISTINCT name) AS count
FROM animal_ins;

-- Oracle 코드를 입력하세요 2
SELECT  COUNT(name) AS count
FROM (SELECT name 
      FROM animal_ins 
      GROUP BY name
     );
     
-- Oracle코드를 입력하세요 3
SELECT  COUNT(a.name) AS count
FROM (SELECT name
      FROM animal_ins GROUP BY name
     ) a;

-- Oracle코드를 입력하세요 4
SELECT COUNT(COUNT(name)) count
FROM animal_ins 
GROUP BY name 
HAVING name IS NOT NULL;
