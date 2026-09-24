-- Q009

--Display only successful/completed payments from `payments` using the
--appropriate payment-status column.

select * 
from  payments
where payment_status='Paid';