--Q066

--Find the total stock quantity for each category.

--version 1
select category_id, sum(stock_quantity) as total_stock
from products
group by category_id
order by total_stock;

--version 2
select c.category_name, sum(p.stock_quantity) as total_stock
from products p join categories c
on p.category_id=c.category_id
group by c.category_id, c.category_name
order by total_stock;