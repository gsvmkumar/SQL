--Q084

--Find customers who have never placed an order.

--version 1
select c.first_name, o.order_id
from customers c LEFT JOIN orders o
on c.customer_id=o.customer_id
where o.order_id is null;

--version 2
SELECT c.first_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);