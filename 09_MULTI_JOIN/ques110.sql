--Q110

--Find the total quantity sold for each product.

--version 1
select oi.product_id, sum(oi.quantity) as total_quantity_sold
from order_items oi
group by oi.product_id
order by oi.product_id;

--version 2
select p.product_id, 
       sum(oi.quantity) as total_quantity_sold
from products p left join order_items oi
on p.product_id = oi.product_id
group by p.product_id
order by p.product_id;