--Q159

--Use CASE to determine whether a product is low-stock, normal-stock, or
--high-stock.

--version 1
select product_id,
	   product_name,
	   case
	   		when stock_quantity>75 then 'High'
			when stock_quantity between 50 and 75 then 'Medium'
			else 'Low'
	   end as "Stock Classification"
from products;

--version 2
with stock_band as (
    select product_id,
	   product_name,
	   case
	   		when stock_quantity>75 then 'High'
			when stock_quantity between 50 and 75 then 'Medium'
			else 'Low'
	   end as "Stock Classification"
    from products
)
select "Stock Classification", count(*) as "Number of Products"
from stock_band
group by "Stock Classification"
order by "Stock Classification";