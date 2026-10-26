--Q060

--Find the maximum salary in each department.

--version 1
select department_id, max(salary) as "Maximum Salary"
from employees
group by department_id;

--version 2
select d.department_name as "Department Name", max(e.salary) as "Maximum Salary"
from employees e join departments d
on e.department_id = d.department_id
group by d.department_id, d.department_name;