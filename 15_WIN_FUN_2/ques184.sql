-- Q184
-- Show each employee's salary and the difference between their salary and their department's average salary.

--version 1
with emp_sal as(
    select
        employee_id,
        salary,
        AVG(salary) over(
            partition by department_id
        ) as sal
    FROM employees
)

select employee_id, salary, (salary-sal) as difference
from emp_sal;

--version 2
SELECT
    employee_id,
    first_name,
    department_id,
    salary,
    ROUND(
        salary - AVG(salary) OVER (
            PARTITION BY department_id
        ),
        2
    ) AS salary_difference
FROM employees;