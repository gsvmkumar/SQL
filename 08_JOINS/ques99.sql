--Q099

--Use a FULL OUTER JOIN between departments and employees to show
--departments without employees and employees without departments.

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name
FROM departments d
FULL OUTER JOIN employees e
    ON d.department_id = e.department_id
WHERE d.department_id IS NULL
   OR e.department_id IS NULL;