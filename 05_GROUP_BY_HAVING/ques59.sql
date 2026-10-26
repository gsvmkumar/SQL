--Q059

--Find the average employee salary for each department.

--version 1
select department_id, round(avg(salary),2) as "Average Salary"
from employees
group by department_id;

--version 2
select d.department_name as "Department Name", round(avg(e.salary),2) as "Average Salary"
from employees e join departments d
on e.department_id = d.department_id
group by d.department_id, d.department_name;