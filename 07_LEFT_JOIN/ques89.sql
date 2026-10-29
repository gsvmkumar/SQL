--Q089

--Find departments that currently have no employees.

--version 1
select d.department_name
from departments d left join employees e
on d.department_id=e.department_id
where e.employee_id is null;

--version 2
SELECT d.department_name
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);