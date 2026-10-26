--Q057

--Count customers by city.

select city, count(*)
from customers
group by city;