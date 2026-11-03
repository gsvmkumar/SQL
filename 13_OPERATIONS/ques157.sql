--Q157

--Use CASE to classify employees into salary bands.

--version 1
select employee_id,
	   first_name,
	   salary,
	   case 
	   		when salary>100000 then 'High'
			when salary between 75000 and 100000 then 'Medium'
			else 'Low'
	   end as "Salary Config"
from employees
order by "Salary Config";

--version 2
with salary_band as (
    select employee_id,
           first_name,
           salary,
           case 
           		when salary>100000 then 'High'
                when salary between 75000 and 100000 then 'Medium'
                else 'Low'
           end as "Salary Config"
    from employees
)

select "Salary Config", count(*) as "Number of Employees"
from salary_band
group by "Salary Config"
order by "Salary Config";