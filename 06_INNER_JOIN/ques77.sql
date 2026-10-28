--Q077

--Display each employee's department name and salary.

select e.first_name, d.department_name, e.salary
from employees e join departments d
on e.department_id=d.department_id
order by e.salary desc;