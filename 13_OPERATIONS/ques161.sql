--Q161

--Find rows containing NULL values in relevant columns.

select *
from products
where product_name is null
   or stock_quantity is null;