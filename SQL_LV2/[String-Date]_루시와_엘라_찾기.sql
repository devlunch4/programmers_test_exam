코딩테스트 연습>String, Date>루시와 엘라 찾기


-- MySQL 코드를 입력하세요
SELECT animal_id, name, sex_upon_intake 
FROM animal_ins
WHERE name
IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY animal_id;

-- Oracle 코드를 입력하세요
SELECT animal_id, name, sex_upon_intake 
FROM animal_ins
WHERE name
IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY animal_id;
