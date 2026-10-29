--Q086

--Find products that have never appeared in an order.

--version 1
select p.product_name
from products p left join order_items oi
on p.product_id=oi.product_id
where oi.order_item_id is null;

--version 2
SELECT p.product_name
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM order_items oi
    WHERE oi.product_id = p.product_id
);