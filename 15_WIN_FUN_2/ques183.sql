-- Q183
-- Calculate the average salary of each employee's department.

--version 1
SELECT
    employee_id,
    first_name,
    department_id,
    avg(salary) over (
        PARTITION BY department_id
    ) as sal
FROM  employees;

--version 2
with dept as(
SELECT
    employee_id,
    first_name,
    department_id,
    avg(salary) over (
        PARTITION BY department_id
    ) as sal
FROM  employees
)

select 
    distinct d.department_name,
    round(dp.sal,2)
from departments d join dept dp
on d.department_id=dp.department_id;