-- 1.
SELECT SUM(amount) as 'суммарное кол-во'
from hardware 
;
-- 2.
SELECT title as 'Закончились'
from hardware
WHERE amount = 0
;
-- 3. 
SELECT AVG(price) as 'Средняя цена мониторов'
from hardware
WHERE title LIKE 'Монитор %'
;
-- 4.
SELECT title, price
from hardware
WHERE title LIKE 'Клавиатура %'
ORDER BY price ASC
;
-- 5. 
SELECT tag, count(title) as 'amount'
FROM hardware 
GROUP BY tag 
ORDER BY amount DESC;
-- 6. 
SELECT amount 
from hardware
WHERE amount != 0 AND tag = 'discount'
;
-- 7. 
SELECT title, price
from hardware
WHERE tag = 'new'
ORDER BY price DESC
LIMIT 1
;
-- 8. 
INSERT INTO `hardware` (`title`, `price`, `amount`) 
VALUES ('Ноутбук Lenovo 2BXKQ7E9XD\n', '54500', '1')
;
-- 9. 
DELETE FROM hardware
WHERE id IN (18)
;