-- Q173
-- Rank all employees by salary using RANK().

select
    employee_id,
    salary,
    RANK() over (
        order by salary desc
    )
from employees;