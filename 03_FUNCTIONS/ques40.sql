--Q040

--Find the 10 most recent orders.

--version 1
select * from orders
order by order_date desc, order_id desc
limit 10;