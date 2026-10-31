--Q118

--Find customers who purchased products from more than 2 categories.

SELECT
    c.customer_id,
    c.first_name,
    COUNT(DISTINCT p.category_id) AS total_categories
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name
HAVING COUNT(DISTINCT p.category_id) > 2
ORDER BY c.customer_id;