--Q013

--Display customers sorted by last name and then first name.

--version: 1
select * 
from customers
order by last_name, first_name;


--version:2
SELECT *
FROM customers
ORDER BY last_name ASC,
         first_name DESC;