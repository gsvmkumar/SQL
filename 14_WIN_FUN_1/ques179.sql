-- Q179
-- Find the second-highest-paid employee in every department.

with ranked_employees as (
    select
        employee_id,
        department_id,
        salary,
        rank() over (
            partition by department_id
            order by salary desc
        ) as rnk
    from employees
)
select
    employee_id,
    department_id,
    salary
from ranked_employees
where rnk =2;