--Q147
--Use a CTE to calculate total spending per customer.

--version 1
with spend(id,spending) as(
    select customer_id, round(sum(total_amount),0)
    from orders
    group by customer_id
)
select id,spending from spend
order by id;


--version 2
with spend(id,spending) as(
    select customer_id, total_amount
    from orders
)
select id, round(sum(spending),0) from spend
group by id
order by id;