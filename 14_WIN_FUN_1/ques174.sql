-- Q174
-- Rank employees by salary within each department.

SELECT 
    employee_id,
    first_name,
    rank() over (
        partition by department_id
        order by salary desc
    )
from employees;