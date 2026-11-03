--Q166

--Count orders by month.

--version 1
select
    EXTRACT(month from order_date) as "Order Month",
    count(*) as "Total Orders"
from orders
group by EXTRACT(month from order_date)
order by "Order Month";