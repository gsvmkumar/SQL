--Q094

--Find customers who have orders but no payment records associated with
--those orders.

--version 1
select o.customer_id, p.payment_id
from orders o left join payments p
on o.order_id=p.order_id
where p.payment_id is null;

--version 2
select o.customer_id,c.first_name,p.payment_id
from orders o left join payments p
on o.order_id=p.order_id
join customers c
on o.customer_id=c.customer_id
where p.payment_id is null
order by o.customer_id;