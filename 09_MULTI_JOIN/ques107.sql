--Q107

--Find the number of orders placed by each customer.


--version 1
select c.customer_id, count(o.order_id)
from customers c
    join orders o
on c.customer_id=o.customer_id
group by c.customer_id
order by c.customer_id;


--version 2
select concat(c.first_name,' ', c.last_name), count(o.order_id)
from customers c
    join orders o
on c.customer_id=o.customer_id
group by c.customer_id
order by c.customer_id;