--코딩테스트 연습>GROUP BY>고양이와 개는 몇 마리 있을까

-- MySQL 코드를 입력하세요
SELECT animal_type, COUNT(*) count 
FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type;

-- Oracle 코드를 입력하세요
SELECT animal_type, COUNT(*) count 
FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type;
