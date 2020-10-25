--코딩테스트 연습>String, Date>DATETIME에서 DATE로 형 변환


-- MySQL코드를 입력하세요
SELECT animal_id, name, DATE_FORMAT(DATETIME, '%Y-%m-%d')
AS 날짜
FROM animal_ins
ORDER BY animal_id;

-- Oracle 코드를 입력하세요
SELECT animal_id, name, TO_CHAR(datetime, 'YYYY-MM-DD') AS 날짜
FROM animal_ins
ORDER BY animal_id;
