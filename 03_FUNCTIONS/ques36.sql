--Q036

--Find the 5 employees with the highest salaries.

--version 1
select * 
from employees 
order by salary desc
limit 5;


--version 2
select employee_id, first_name, salary 
from employees 
order by salary desc
limit 5;

--version 3
select employee_id, first_name, salary 
from employees 
where employee_id in(
	select employee_id
	from employees
	order by salary desc
	limit 5
)
order by salary desc;


--version 4 (window function)
select employee_id, first_name, salary
from (
    select employee_id, first_name, salary, 
    rank() over(order by salary desc) as rnk
    from employees
) t
where rnk <= 5;