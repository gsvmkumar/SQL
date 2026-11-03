--Q168

--Calculate the number of days between order date and shipment/delivery
--date where applicable.

SELECT
    o.order_id,
    o.order_date,
    s.shipped_date,
    s.shipped_date - o.order_date AS days_to_ship
FROM orders o
LEFT JOIN shipments s
    ON o.order_id = s.order_id;