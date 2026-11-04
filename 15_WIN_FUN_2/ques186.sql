-- Q186
-- Calculate a running total of order amounts ordered by order date.

SELECT
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        ORDER BY order_date
    ) AS running_total
FROM orders;