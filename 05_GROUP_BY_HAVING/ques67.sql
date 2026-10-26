--Q067

--Count orders for each customer.

--version 1
select customer_id, count(order_id) as order_count
from orders
group by customer_id
order by order_count;

--version 2
select c.first_name, count(*) as order_cnt
from orders o join customers c
on o.customer_id=c.customer_id
group by c.customer_id
order by c.first_name,order_cnt;