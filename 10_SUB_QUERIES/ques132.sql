--Q132

--Find orders whose total amount is greater than the average order amount.

SELECT order_id, customer_id, total_amount
FROM orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM orders
)
ORDER BY total_amount DESC;
