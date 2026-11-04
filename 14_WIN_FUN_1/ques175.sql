-- Q175
-- Rank products by price within each category.

select 
    product_id,
    product_name,
    price,
    DENSE_RANK() over(
        partition by category_id
        order by price desc
    )
from products;