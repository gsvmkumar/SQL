--Q098

--Use a FULL OUTER JOIN between products and order items to identify
--unmatched products and order-item records.


select p.product_id, p.product_name, o.order_item_id, o.order_id
from products p
full outer join order_items o
on p.product_id=o.product_id
where p.product_id is null or o.order_item_id is null;