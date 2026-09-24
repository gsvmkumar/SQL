-- Q015
-- Display the first 10 products based on product ID.

SELECT product_id,
       product_name
FROM products
ORDER BY product_id
LIMIT 10;