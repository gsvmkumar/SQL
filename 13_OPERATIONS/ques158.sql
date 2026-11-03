--Q158

--Use CASE to classify orders based on order amount.

select order_id,
       customer_id,
       total_amount,
       case
       		when total_amount>75000 then 'High'
            when total_amount between 50000 and 75000 then 'Medium'
            else 'Low'
        end as "Order Classification"
from orders
order by order_id;