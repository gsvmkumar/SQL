--Q130

--Find products that have been ordered at least once using EXISTS.

SELECT p.product_id, p.product_name, p.price
FROM products p
WHERE EXISTS (
    SELECT 1
    FROM order_items oi
    WHERE oi.product_id = p.product_id
)
ORDER BY p.product_id;
