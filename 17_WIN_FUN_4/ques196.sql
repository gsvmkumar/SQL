-- QUES196: 
-- Calculate CUME_DIST() for employees based on salary.

select
    employee_id,
    first_name,
    cume_dist() over (order by salary) as cume_dist
from employees;