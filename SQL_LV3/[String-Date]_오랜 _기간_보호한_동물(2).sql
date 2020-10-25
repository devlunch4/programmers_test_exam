--코딩테스트 연습>String, Date>오랜 기간 보호한 동물(2)

-- MySQL 코드를 입력하세요
SELECT o.animal_id, o.name
FROM animal_ins i JOIN animal_outs o
ON i.animal_id = o.animal_id
ORDER BY (o.datetime - i.datetime) DESC
LIMIT 2;

-- Oracle 코드를 입력하세요
SELECT *
FROM (SELECT o.animal_id, o.name
    FROM animal_ins i JOIN animal_outs o
    ON i.animal_id = o.animal_id
    ORDER BY (o.datetime - i.datetime) DESC
     )
WHERE ROWNUM < 3;
