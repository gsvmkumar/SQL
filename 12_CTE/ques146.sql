--Q146

--Create a CTE containing products whose price is greater than 1000.

--version 1
with pd as(
    select  product_id,
            product_name,
            price
    from products where price>1000
)
select * from pd;

--version 2
with pd (id,name,cost)as(
    select  product_id,
            product_name,
            price
    from products where price>1000
)
select * from pd;