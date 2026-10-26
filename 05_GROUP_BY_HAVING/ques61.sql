--Q061

--Find the minimum salary in each department.

--version 1
select department_id, min(salary) as min_salary
from employees
order by department_id;

--version 2
select department_id, min(salary)  
from employees
group by department_id
order by department_id;

--version 3
select d.department_name, min(e.salary) as min_salary
from employees e
join departments d on e.department_id = d.department_id
group by d.department_id,d.department_name
order by min_salary;