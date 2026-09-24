--Q014

--Display products sorted by price ascending and stock quantity
--descending.

select * 
from products
order by price asc,
         stock_quantity desc;