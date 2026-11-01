--Q135

--Find products whose price is greater than every product in a selected category.
--The selected category in this example is Computers.

SELECT product_id, product_name, category_id, price
FROM products
WHERE price > ALL (
    SELECT p.price
    FROM products p
    WHERE p.category_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Computers'
    )
)
ORDER BY price DESC;
