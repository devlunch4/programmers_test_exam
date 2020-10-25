--코딩테스트 연습>GROUP BY>동명 동물 수 찾기

[GROUP BY]_동명_동물_수_찾기

-- MySQL 코드를 입력하세요
SELECT name, COUNT(name) count
FROM animal_ins 
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY name;

-- Oracle 코드를 입력하세요
SELECT name, COUNT(name) count
FROM animal_ins 
GROUP BY name
HAVING COUNT(name) > 1
ORDER BY name;
