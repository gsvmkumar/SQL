--Q096

--Use a RIGHT JOIN to display all departments and matching employees.

select d.department_name, e.first_name
from departments d RIGHT JOIN employees e
on d.department_id=e.department_id;