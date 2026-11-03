--Q165

--Count orders by year.

SELECT
    EXTRACT(YEAR FROM order_date) AS "Order Year",
    COUNT(*) AS "Total Orders"
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY "Order Year";