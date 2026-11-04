-- Q182
-- Calculate the total salary for each employee's department using a window function.

SELECT
    employee_id,
    first_name,
    sum(salary) over (
        PARTITION BY department_id
    ) as sal
FROM  employees;