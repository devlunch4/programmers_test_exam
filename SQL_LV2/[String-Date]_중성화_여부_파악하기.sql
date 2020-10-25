--코딩테스트 연습>String, Date>중성화 여부 파악하기


-- MySQL코드를 입력하세요
SELECT animal_id, name,
CASE
    WHEN sex_upon_intake LIKE '%Neutered%' 
        OR sex_upon_intake LIKE '%Spayed%' 
    THEN 'O'
    ELSE 'X'
END
AS 중성화
FROM animal_ins
ORDER BY animal_id;


-- Oracle 코드를 입력하세요
SELECT animal_id, name,
CASE
    WHEN sex_upon_intake LIKE '%Neutered%' 
        OR sex_upon_intake LIKE '%Spayed%' 
    THEN 'O'
    ELSE 'X'
END
AS 중성화
FROM animal_ins
ORDER BY animal_id;
