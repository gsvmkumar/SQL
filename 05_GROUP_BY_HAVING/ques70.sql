--Q070

--Find departments having more than 5 employees.

--version 1
select department_id, count(*) as cnt
from employees
group by department_id
having count(*)>5;

--version 2
select d.department_name, count(*) as cnt
from employees e join departments d
on e.department_id=d.department_id
group by d.department_id, d.department_name
having count(*)>5;