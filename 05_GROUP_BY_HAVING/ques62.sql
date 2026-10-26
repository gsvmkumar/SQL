--Q062

--Find the total salary expense for each department.

--version 1

select department_id, sum(salary) as Dept_Sal
from employees
group by department_id
order by Dept_sal;

--version 2
select d.department_name,
		sum(e.salary) as SAL
from employees e join departments d
on e.department_id=d.department_id
group by d.department_id, d.department_name
order by SAL;