--Q083

--Display all customers and their orders, including customers who have
--never placed an order.

--version 1
select c.first_name, o.order_id
from customers c LEFT JOIN orders o
on c.customer_id=o.customer_id
order by c.first_name;

--version 2
select c.first_name, count(o.order_id)
from customers c LEFT JOIN orders o
on c.customer_id=o.customer_id
group by c.first_name
having c.first_name LIKE 'Divya';