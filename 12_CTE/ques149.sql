--Q149

--Create a CTE that calculates average salary by department.

with avg(dept,sal) as(
    select department_id, round(avg(salary),2)
    from employees
    group by department_id
)
select * from avg order by dept;