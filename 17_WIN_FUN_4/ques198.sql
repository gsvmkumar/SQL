-- QUES198:
-- Divide products into 5 price groups using NTILE(5).

SELECT
    product_id,
    product_name,
    price,
    NTILE(5) OVER (ORDER BY price) AS price_group
FROM products;