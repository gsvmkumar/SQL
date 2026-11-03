--Q163

--Extract the year from order dates.

SELECT
    order_id,
    order_date,
    EXTRACT(YEAR FROM order_date) AS "Order Year",
    EXTRACT(MONTH FROM order_date) AS "Order Month",
    EXTRACT(DAY FROM order_date) AS "Order Day",
    order_date::TIME AS "Order Time"
FROM orders;