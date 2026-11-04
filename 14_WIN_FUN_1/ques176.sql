-- Q176
-- Use DENSE_RANK() to rank employees by salary within each department.

SELECT
    employee_id,
    first_name,
    salary,
    DENSE_rank() OVER (
        PARTITION BY department_id
        ORDER BY salary desc
    )
from employees;