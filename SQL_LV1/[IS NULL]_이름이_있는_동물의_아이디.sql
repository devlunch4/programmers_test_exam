--코딩테스트 연습>IS NULL>이름이 있는 동물의 아이디

-- MySQL 코드를 입력하세요
SELECT animal_id 
FROM animal_ins 
WHERE name IS NOT NULL
ORDER BY animal_id ASC;

-- Oracle 코드를 입력하세요
SELECT animal_id 
FROM animal_ins 
WHERE name IS NOT NULL
ORDER BY animal_id ASC;
