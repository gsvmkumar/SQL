-- Q004

--Display all employees with only their employee ID, name, department ID, and salary.
select employee_id, first_name as name, department_id, salary 
from employees;

--version 2
select employee_id,
	   first_name as name,
	   department_id,
	   salary
from employees
order by salary;

--version 3
select department_id, count(*) as number,
		count(salary)
from employees
group by department_id
order by department_id;