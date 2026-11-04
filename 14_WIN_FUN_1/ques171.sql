-- Q171
-- Assign a row number to all employees ordered by salary descending using
-- ROW_NUMBER().

--version 1
select 
    first_name,
    salary,
    row_number() OVER(
        order by salary desc
    )
from employees
order by employee_id;

--version 2
select 
    first_name,
    salary,
    rank() OVER(
		partition by department_id
        order by salary desc
    ) as rn
from employees
order by rn;