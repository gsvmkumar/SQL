-- Q180
-- Find all employees tied for the highest salary in each department.

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
where rnk = 1;