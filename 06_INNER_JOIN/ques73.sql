--Q073

--Join orders and order_items to display each order item.

--version 1
select o.order_id, oi.product_id
from orders o join order_items oi
on o.order_id=oi.order_id;

--version 2
SELECT o.order_id, p.product_name
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id;