--Q153

--Create two CTEs and join their results.

with avg(dept,sal) as(
    select department_id, avg(salary)
    from employees
    group by department_id
),
dep_names as(
    select department_id, department_name
    from departments
)

select d.department_id, d.department_name, round(a.sal,2) as sal
from dep_names d
join avg a on d.department_id = a.dept
where a.sal > 10000
order by d.department_id;