--Q124

--Find products with the maximum price.

SELECT product_id, product_name, price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);
