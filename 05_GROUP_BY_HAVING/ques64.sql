--Q064

--Find the average product price for each category.

--version 1
select category_id, round(avg(price),2) as avg_price
from products
group by category_id
order by avg_price;

--version 2
select c.category_name, round(avg(p.price),2) as avg_price
from products p join categories c
on p.category_id=c.category_id
group by c.category_id,c.category_name
order by avg_price;