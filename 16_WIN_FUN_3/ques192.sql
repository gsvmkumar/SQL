-- QUES192: 
--Find the first order amount for each customer using FIRST_VALUE().

SELECT
	order_id,
	customer_id,
	total_amount,
	FIRST_VALUE(total_amount) OVER (
			PARTITION BY customer_id
			ORDER BY order_date
	)
from orders;