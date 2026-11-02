--Q151

--Create a CTE calculating total quantity sold per product.

with total_qty(prod_id,qty) as(
    select product_id, sum(quantity)
    from order_items
    group by product_id
)
select * from total_qty
order by prod_id;