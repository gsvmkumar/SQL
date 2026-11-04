-- QUES193: 
--Find the latest order amount for each customer using an appropriate window frame with LAST_VALUE().


SELECT
    order_id,
    customer_id,
    total_amount,
    LAST_VALUE(total_amount) over (
            partition by customer_id
            order by order_date
            ROWS BETWEEN
            UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) as latest_order_amount
FROM orders;