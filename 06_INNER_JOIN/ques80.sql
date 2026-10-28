--Q080

--Join orders with payments to display order amount and payment information.

select o.order_id, o.total_amount, p.payment_method, p.payment_status
from orders o join payments p
on o.order_id=p.order_id;