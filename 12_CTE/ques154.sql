--Q154

--Create a CTE that calculates customer order counts and then classify
--customers based on order count.

with cust_orders(cust_id,order_count) as(
    select customer_id, count(order_id)
    from orders
    group by customer_id
)
select c.customer_id, c.first_name, c.last_name, co.order_count,
case
    when co.order_count < 3 then 'Low'
    when co.order_count between 3 and 4 then 'Medium'
    else 'High'
end as order_classification
from cust_orders co
join customers c
on c.customer_id = co.cust_id
order by c.customer_id;