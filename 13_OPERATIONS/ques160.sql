--Q160

--Use COALESCE to replace missing values with a meaningful default.

select product_id,
       product_name,
       COALESCE(stock_quantity, 0) as "Stock Quantity"
from products
order by product_id;