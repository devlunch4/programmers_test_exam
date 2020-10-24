--코딩테스트 연습>SELECT>상위 n개 레코드

-- MySQL 코드를 입력하세요
SELECT name
FROM animal_ins
ORDER BY datetime
LIMIT 1;

-- Oracle 코드를 입력하세요
SELECT name
FROM (SELECT * 
      FROM animal_ins 
      ORDER BY datetime
     )
WHERE ROWNUM = 1;
