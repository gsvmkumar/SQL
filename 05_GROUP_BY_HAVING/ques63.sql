--Q063

--Count products in each category.

--version 1
select category_id, count(*) as cnt
from products
group by category_id;

--version 2
select c.category_name, count(*) as cnt
from products p join categories c
on p.category_id=c.category_id
group by c.category_name, c.category_id
order by cnt;