--Q076

--Join employees with departments to display employee names and department names.

--version 1
select e.first_name, d.department_name
from employees e join departments d
on e.department_id=d.department_id;

--version 2
select e.first_name, d.department_name
from employees e join departments d
on e.department_id=d.department_id
where e.first_name LIKE '__vya';