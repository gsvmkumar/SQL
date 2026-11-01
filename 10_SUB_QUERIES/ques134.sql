--Q134

--Find customers who placed the most expensive order.

SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.total_amount = (
    SELECT MAX(total_amount)
    FROM orders
);
