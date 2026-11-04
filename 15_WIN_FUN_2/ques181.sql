-- Q181
-- Calculate the total salary of all employees while keeping every employee row.

SELECT
    employee_id,
    first_name,
    sum(salary) over() as total_salary
FROM employees;