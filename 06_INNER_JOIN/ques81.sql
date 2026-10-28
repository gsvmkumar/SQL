--Q081

--Join orders with shipments to display order and shipment status.

select o.order_id, o.total_amount, s.shipment_status, s.shipping_cost
from orders o join shipments s
on o.order_id=s.order_id
order by s.shipping_cost;