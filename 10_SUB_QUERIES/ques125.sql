--Q125

--Find customers whose total spending is greater than the average customer spending.

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) > (
    SELECT AVG(customer_spending)
    FROM (
        SELECT customer_id, SUM(total_amount) AS customer_spending
        FROM orders
        GROUP BY customer_id
    ) spending
)
ORDER BY total_spending DESC;
