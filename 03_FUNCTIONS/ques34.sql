--Q034

--Find the 5 most expensive products.

--version 1
select * from products 
order by price desc
limit 5;

--version 2
select product_id, product_name, price from products 
order by price desc
limit 5;

--version 3
select product_id, product_name, price 
from products
where product_id in (
	select product_id from products
	order by price desc
	limit 5
)
order by price desc;