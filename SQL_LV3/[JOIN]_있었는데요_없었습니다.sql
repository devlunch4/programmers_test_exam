-->코딩테스트 연습>JOIN>있었는데요_없었습니다

-- MySQL 코드를 입력하세요
SELECT b.animal_id, b.name
FROM animal_ins a JOIN animal_outs b ON a.animal_id = b.animal_id
WHERE a.datetime > b.datetime
ORDER BY a.datetime;

--Oracle 코드를 입력하세요
SELECT b.animal_id, b.name
FROM animal_ins a JOIN animal_outs b ON a.animal_id = b.animal_id
WHERE a.datetime > b.datetime
ORDER BY a.datetime;
