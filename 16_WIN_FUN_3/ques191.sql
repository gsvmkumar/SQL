-- QUES191:
-- Calculate the difference between an order amount and the customer's previous order amount.

SELECT
    order_id,
    customer_id,
    total_amount,
    ABS(
        total_amount -
        LAG(total_amount) OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        )
    ) AS order_difference
FROM orders;