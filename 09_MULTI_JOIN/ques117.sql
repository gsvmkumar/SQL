--Q117

--Find orders containing more than 3 different products.

--version 1
select o.order_id, count(distinct p.product_id) as different_products
from orders o
left join order_items oi
on o.order_id = oi.order_id
left join products p
on oi.product_id=p.product_id
group by o.order_id
having count(distinct p.product_id) > 3;

--version 2
SELECT
    oi.order_id,
    COUNT(DISTINCT oi.product_id) AS different_products
FROM order_items oi
GROUP BY oi.order_id
HAVING COUNT(DISTINCT oi.product_id) > 3
ORDER BY oi.order_id;