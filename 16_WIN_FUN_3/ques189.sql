-- QUES189: 
--Use LAG() to display each customer's previous order amount.

select 
	order_id,
	customer_id,
	total_amount,
	LAG(total_amount) over (
			partition by customer_id
            order by order_date
	)
from orders;