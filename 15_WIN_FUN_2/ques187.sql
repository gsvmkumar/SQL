-- Q187
-- Calculate a running total of sales for each customer ordered by order date.

SELECT
    customer_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS running_total
FROM orders;