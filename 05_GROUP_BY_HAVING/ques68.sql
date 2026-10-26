--Q068

--Find the total amount spent by each customer.

--version 1
select customer_id, sum(total_amount) as total_spent
from orders
group by customer_id
order by total_spent desc;

--version 2
select c.first_name, sum(o.total_amount) as total_spent
from orders o join customers c
on o.customer_id=c.customer_id
group by c.customer_id, c.first_name
order by total_spent desc;