--Q095

--Rewrite a suitable LEFT JOIN query using a RIGHT JOIN.

--Display all customers and their orders, including customers who have
--never placed an order.

--version 1
select c.first_name, o.order_id
from orders o RIGHT JOIN customers c
on c.customer_id=o.customer_id
order by c.first_name;