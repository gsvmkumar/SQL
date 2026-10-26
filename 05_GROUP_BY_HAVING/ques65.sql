--Q065

--Find the maximum product price in each category.

--version 1
select category_id, max(cost_price) as Price
from products
group by category_id
order by price;

--version 2
select c.category_name, max(p.cost_price) as Price
from products p join categories c
on p.category_id=c.category_id
group by c.category_id,c.category_name
order by price;