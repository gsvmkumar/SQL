--Q092

--Display all orders and payment records, including orders without a
--payment record.

--version 1
select o.order_id, o.order_date, p.payment_id, p.payment_date
from orders o left join payments p
on o.order_id=p.order_id;