--Q170

--Find customers whose names match a specified pattern using LIKE or
--ILIKE.

--version 1: Using LIKE (case-sensitive)
select *
from customers
where first_name like 'A%';

select *
from customers
where first_name like 'Riya';

select *
from customers
where first_name like '_iya';

--version 2: Using ILIKE (case-insensitive)
select *
from customers
where first_name ilike 'a%';

select *
from customers
where first_name ilike 'riya';