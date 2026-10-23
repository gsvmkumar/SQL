--Q039

--Display customers using a single concatenated full-name column.

select concat(first_name,' ',last_name) as full_name
from customers;