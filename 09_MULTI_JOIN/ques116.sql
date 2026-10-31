--Q116

--Find the total number of items in each order.

--version 1
select oi.order_id, count(*) as total_items
from order_items oi
group by oi.order_id
order by oi.order_id;

--version 2
SELECT
    o.order_id,
    COUNT(oi.order_item_id) AS total_items
FROM orders o
LEFT JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id
ORDER BY o.order_id;