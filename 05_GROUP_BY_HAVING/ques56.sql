--Q056

--Count customers by country.

select country, count(*)
from customers
group by country;