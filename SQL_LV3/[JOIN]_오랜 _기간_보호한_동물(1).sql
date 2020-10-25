--코딩테스트 연습>JOIN>오랜 기간 보호한 동물(1)


-- MySQL 코드를 입력하세요
SELECT i.name, i.datetime
FROM animal_ins i LEFT JOIN animal_outs o ON i.animal_id = o.animal_id
WHERE o.datetime IS NULL
ORDER BY i.datetime ASC LIMIT 3;

-- Oracle 코드를 입력하세요
SELECT * 
FROM (
    SELECT i.name, i.datetime
    FROM animal_ins i LEFT JOIN animal_outs o ON i.animal_id = o.animal_id
    WHERE o.animal_id IS NULL
    ORDER BY i.datetime ASC
    )
WHERE rownum < 4;
