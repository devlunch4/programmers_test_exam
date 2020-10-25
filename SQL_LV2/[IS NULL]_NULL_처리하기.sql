--코딩테스트 연습>IS NULL>NULL 처리하기

-- MySQL 코드를 입력하세요
SELECT animal_type, IFNULL(name, 'No name'), sex_upon_intake
FROM animal_ins 
ORDER BY animal_id;

-- Oracle 코드를 입력하세요
SELECT animal_type, NVL(name, 'No name'), sex_upon_intake
FROM animal_ins 
ORDER BY animal_id;
