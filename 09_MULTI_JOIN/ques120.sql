--Q120

--Find the category with the highest total sales revenue.

select p.category_id, c.category_name, sum(oi.quantity*oi.unit_price) as total_sales
from order_items oi 
join products p
on oi.product_id=p.product_id
join categories c
on p.category_id=c.category_id
group by p.category_id, c.category_name
order by total_sales desc
limit 1;