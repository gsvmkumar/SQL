-- Q178
-- Find the top 3 highest-paid employees in every department using a
-- window function.

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
where rnk <= 3;