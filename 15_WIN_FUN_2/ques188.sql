-- Q188
-- Calculate a running average of order amounts over time.

SELECT
    order_id,
    order_date,
    total_amount,
	ROUND(
    AVG(total_amount) OVER (
        ORDER BY order_date
    ) , 2
	)AS running_average
FROM orders;