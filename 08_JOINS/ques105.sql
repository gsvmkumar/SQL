--Q105

--Determine the number of rows produced by a cross join between two
--selected tables.

select count(*)
from categories c
cross join suppliers s;

select count(*)
from employees c
cross join departments s;