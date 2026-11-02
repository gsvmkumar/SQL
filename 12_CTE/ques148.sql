--Q148

--Using a CTE, find customers whose spending exceeds 10000.


--version 1
with spend(id,spending) as(
    select customer_id, round(sum(total_amount),0) as sp
    from orders
    group by customer_id
    HAVING round(sum(total_amount),0)>1000
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
having round(sum(spending),0)>10000
order by id;