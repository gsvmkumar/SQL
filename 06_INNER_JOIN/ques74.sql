--Q074

--Join products and order_items to display product names and ordered quantities.

select oi.product_id, p.product_name, oi.quantity
from order_items oi join products p
on oi.product_id=p.product_id
order by oi.quantity desc;