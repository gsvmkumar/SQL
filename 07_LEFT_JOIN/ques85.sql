--Q085

--Display all products and their order items, including products that have
--never been ordered.

--version 1
select p.product_name, oi.order_item_id
from products p left join order_items oi
on p.product_id=oi.product_id;