--Q010

--Display all shipment records with shipment ID, order ID, shipping date,
--delivery date, and shipment status.

select shipment_id,
       order_id,
       shipped_date,
       delivered_date,
       shipment_status
from shipments;