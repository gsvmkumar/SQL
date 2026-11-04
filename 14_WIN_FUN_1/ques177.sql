-- Q177
-- Compare ROW_NUMBER(), RANK(), and DENSE_RANK() on employee salaries.

--version 1
SELECT
    employee_id,
    first_name,
    ROW_NUMBER() over (
        PARTITION BY department_id
        ORDER BY salary desc
    )
from employees;

--version 2
SELECT
    employee_id,
    first_name,
    RANK() over (
        PARTITION BY department_id
        ORDER BY salary desc
    )
from employees;

--version 3
SELECT
    employee_id,
    first_name,
    DENSE_RANK() over (
        PARTITION BY department_id
        ORDER BY salary desc
    )
from employees;