--Q075

--Join products, order_items, and orders to display product-level order information.

select o.order_id, p.product_name, oi.quantity, o.order_date
from orders o join order_items oi
on o.order_id=oi.order_id
join products p
on oi.product_id=p.product_id;