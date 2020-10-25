코딩테스트 연습>String, Date>이름에 el이 들어가는 동물 찾기

-- MySQL 코드를 입력하세요
SELECT animal_id, name
FROM animal_ins
WHERE animal_type = 'Dog' 
    AND (name LIKE '%El%' 
    OR name LIKE '%el%')
ORDER BY name;

-- Oracle 코드를 입력하세요
SELECT animal_id, name
FROM animal_ins
WHERE animal_type = 'Dog' 
    AND (name LIKE '%El%' 
    OR name LIKE '%el%')
ORDER BY name;
