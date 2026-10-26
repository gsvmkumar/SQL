--Q069

--Find customers whose total spending is greater than 10000.

--version 1
select customer_id, sum(total_amount) as total_spent
from orders
group by customer_id
having sum(total_amount) > 10000
order by total_spent;

--version 2
select c.first_name, sum(o.total_amount) as total_spent
from orders o join customers c
on o.customer_id=c.customer_id
group by c.customer_id, c.first_name
having sum(o.total_amount) > 10000
order by total_spent;