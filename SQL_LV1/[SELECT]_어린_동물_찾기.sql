--코딩테스트 연습>SELECT>어린 동물 찾기

-- MySQL 코드를 입력하세요
SELECT animal_id, name 
FROM animal_ins 
WHERE intake_condition 
NOT LIKE 'Aged' ORDER BY animal_id

-- Oracle 코드를 입력하세요
SELECT animal_id, name 
FROM animal_ins 
WHERE intake_condition 
NOT LIKE 'Aged' ORDER BY animal_id


https://programmers.co.kr/learn/courses/30/lessons/59037
https://gist.github.com/devlunch4/aaca78692be2d5f68194cf851b3fd165
