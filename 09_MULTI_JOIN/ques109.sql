--Q109

--Find the customer with the highest total spending.

--version 1
SELECT c.customer_id, SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spending DESC
LIMIT 1;


--version 2
SELECT
    c.customer_id,
    CONCAT(c.first_name,' ',c.last_name) AS Name,
    ROUND(SUM(o.total_amount), 2) AS total_spending
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.total_amount) = (
    SELECT MAX(total_spending)
    FROM (
        SELECT SUM(o.total_amount) AS total_spending
        FROM customers c
        JOIN orders o
            ON c.customer_id = o.customer_id
        GROUP BY c.customer_id
    ) AS subquery
);