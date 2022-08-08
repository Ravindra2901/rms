insert into menu (id,name,cost) values(4,'cheese strips',8)

UPDATE reservation SET number_of_guest = 7 WHERE id = 3

DELETE FROM payment WHERE id = 3

SELECT * FROM menu ORDER BY cost

SELECT * FROM orders WHERE quantity >2


SELECT o.id,o.customer_id,o.table_no,m.name FROM orders o JOIN menu m ON o.menu_id = o.id

select sum(subtotal) as total,customer_id from orders group by table_no,customer_id

select MAX(total),customer_id FROM payment

select min(number_of_guest) AS min_of_guests,id FROM reservation

SELECT customer_id,SUM(subtotal) AS total FROM (
SELECT r.number_of_guest,o.customer_id,o.menu_id,o.subtotal FROM reservation AS r JOIN orders AS  o ON 
r.customer_id = o.customer_id
) AS temp GROUP BY customer_id