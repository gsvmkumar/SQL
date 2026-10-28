--Q071

--Join customers and orders to display customer names with their orders.

select c.first_name, o.order_id
from orders o join customers c
on o.customer_id=c.customer_id;