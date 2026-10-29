--Q093

--Display all orders and shipment records, including orders without
--shipment information.


--version 1
select o.order_id, s.shipment_id
from orders o left join shipments s
on o.order_id=s.order_id;

--version 2
--Q093

--Display all orders and shipment records, including orders without
--shipment information.


--version 1
select o.order_id, s.shipment_id
from orders o left join shipments s
on o.order_id=s.order_id
where s.shipment_id is null;