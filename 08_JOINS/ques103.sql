--Q103

--Use a CROSS JOIN between two small tables and observe the Cartesian
--product.

select e.first_name, e.last_name, d.department_name
from employees e
cross join departments d;