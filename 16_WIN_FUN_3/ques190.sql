-- QUES190
-- Use LEAD() to display each customer's next order amount.

SELECT 
	order_id,
	customer_id,
	total_amount,
	LEAD(total_amount) over(
			PARTITION BY customer_id
			ORDER BY order_date
	)
from orders;