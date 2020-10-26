--코딩테스트 연습>Summer/Winter Coding(2019)>우유와 요거트가 담긴 장바구니


Mysql = Oracle


-- 코드를 입력하세요
SELECT a.cart_id
FROM (SELECT cart_id
      FROM cart_products
      WHERE name = 'Yogurt'
     ) as A, 
    (SELECT cart_id
     FROM cart_products
     WHERE name = 'Milk'
    ) as B
WHERE a.cart_id = b.cart_id

-- 코드를 입력하세요
SELECT a.cart_id
FROM cart_products a, cart_products b
WHERE  a.cart_id = b.cart_id
AND a.name LIKE 'Yogurt' 
AND b.name LIKE 'Milk'
ORDER BY cart_id;

-- 코드를 입력하세요
SELECT a.cart_id
FROM cart_products a JOIN cart_products b
ON a.cart_id = b.cart_id
WHERE a.name LIKE 'Yogurt' 
AND b.name LIKE 'Milk'
ORDER BY cart_id;
