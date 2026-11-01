--Q121

--Find products whose price is greater than the average product price.

SELECT product_id, product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
)
ORDER BY price DESC;
