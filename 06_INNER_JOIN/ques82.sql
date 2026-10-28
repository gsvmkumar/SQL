--Q082

--Create a multi-table query showing customer name, order ID, product name, quantity, and product price.

select c.first_name, o.order_id, p.product_name, oi.quantity, p.price
from customers c join orders o
on c.customer_id=o.customer_id
join order_items oi
on o.order_id=oi.order_id
join products p
on oi.product_id=p.product_id;