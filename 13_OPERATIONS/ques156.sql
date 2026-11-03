--Q156

--Use CASE to classify products as Cheap, Medium, or Expensive
--based on price.

select product_id,
	   product_name,
	   case
	   		when price>75000 then 'HIGH'
			when price between 50000 and 75000 then 'Medium'
			else 'LOW'
		end as Classification
from products;