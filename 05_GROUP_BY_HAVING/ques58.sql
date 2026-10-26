--Q058

--Count employees by department.

--version 1
select department_id, count(*) as "Count"
from employees
group by department_id;

--version 2
SELECT
    d.department_name AS "Department Name",
    COUNT(*) AS "Count"
FROM employees e
JOIN departments d
    ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name;