--Q035

--Find the 10 cheapest products.

--version 1
select *
from products
order by price
limit 10;

--version 2
select product_id, product_name, price
from products
order by price
limit 10;

--version 3
select product_id, product_name, price
from products
where product_id in (
    select product_id from products
    order by price
    limit 10
)
order by price;