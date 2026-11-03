--Q164

--Extract the month from order dates.

SELECT
    order_id,
    order_date,
    EXTRACT(MONTH FROM order_date) AS "Order Month"
FROM orders;