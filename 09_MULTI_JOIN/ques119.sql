--Q119

--Find the department with the highest average employee salary.

select d.department_name,
       round(avg(e.salary),2)
from employees e join departments d
on e.department_id=d.department_id
group by d.department_id, d.department_name;