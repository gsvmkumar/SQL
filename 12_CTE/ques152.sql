--Q152

--Use the product-sales CTE to find the top-selling products.

with product_sales(prod_id,qty) as(
    select product_id, sum(quantity)
    from order_items
    group by product_id
)
select * from product_sales
order by qty desc
limit 5;