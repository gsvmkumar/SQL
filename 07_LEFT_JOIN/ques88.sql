--Q088

--Display all departments and their employees, including departments with
--no employees.

--version 1
select d.department_name, e.employee_id
from departments d LEFT JOIN employees e
on d.department_id=e.department_id
order by d.department_name;

--version 2
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;