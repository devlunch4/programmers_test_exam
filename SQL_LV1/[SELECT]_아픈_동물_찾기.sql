--코딩테스트 연습>SELECT>아픈 동물 찾기

-- MySQL 코드를 입력하세요
SELECT animal_id, name
FROM animal_ins
WHERE intake_condition = 'Sick'
ORDER BY animal_id;

-- Oracle 코드를 입력하세요
SELECT animal_id, name
FROM animal_ins
WHERE intake_condition = 'Sick'
ORDER BY animal_id;

https://gist.github.com/devlunch4/2b5abbed12588718733ca2c1c390ddb4
https://programmers.co.kr/learn/courses/30/lessons/59036
