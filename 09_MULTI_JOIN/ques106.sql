--Q106

--Find the total amount spent by each customer using customers and
--orders.


select c.customer_id, sum(o.total_amount)
from customers c 
    join orders o
on c.customer_id=o.customer_id
group by c.customer_id
order by c.customer_id;