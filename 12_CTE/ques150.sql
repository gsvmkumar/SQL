--Q150

--Use the department salary CTE to find departments above the overall
--average salary.

with avg(dept,sal) as(
    select department_id, round(avg(salary),2)
    from employees
    group by department_id
)

select * from avg
where sal > (select round(avg(salary),2) 
			from employees)
order by dept;