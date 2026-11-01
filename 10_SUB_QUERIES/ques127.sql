--Q127

--Find products that belong to the most expensive category based on average category price.

SELECT p.product_id,
       p.product_name,
       p.category_id,
       p.price
FROM products p
WHERE p.category_id IN (
    SELECT category_id
    FROM products
    GROUP BY category_id
    HAVING AVG(price) = (
        SELECT MAX(category_average_price)
        FROM (
            SELECT category_id, AVG(price) AS category_average_price
            FROM products
            GROUP BY category_id
        ) category_prices
    )
)
ORDER BY p.price DESC;
