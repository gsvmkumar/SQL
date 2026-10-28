--Q072

--Display customer name, order ID, order date, and order amount.
--version 1
select c.first_name, o.order_id, o.order_date, o.total_amount
from orders o join customers c
on o.customer_id=c.customer_id;

--version 2
select c.first_name, o.order_id, o.order_date, o.total_amount
from orders o left join customers c
on o.customer_id=c.customer_id;