코딩테스트 연습>JOIN>없어진 기록 찾기

-- MySQL코드를 입력하세요
SELECT b.animal_id, b.name
FROM animal_ins a RIGHT JOIN animal_outs b ON a.animal_id = b.animal_id
WHERE a.animal_id IS NULL
ORDER BY b.animal_id;



-- Oracle 코드를 입력하세요1
SELECT b.animal_id, b.name
FROM animal_ins a RIGHT JOIN animal_outs b ON a.animal_id = b.animal_id
WHERE a.animal_id IS NULL
ORDER BY b.animal_id;

-- Oracle 코드를 입력하세요2
SELECT b.animal_id, b.name
FROM animal_ins a JOIN animal_outs b ON a.animal_id (+) = b.animal_id
WHERE a.animal_id IS NULL
ORDER BY b.animal_id;



