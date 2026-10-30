--Q101

--Using a SELF JOIN, display pairs of employees who work in the same
--department without repeating reversed pairs.

SELECT
    e1.employee_id AS employee_id,
    concat(e1.first_name,' ',e1.last_name) AS employee_name,
    e2.employee_id AS colleague_id,
    concat(e2.first_name,' ',e2.last_name) AS colleague_name,
    e1.department_id
FROM employees e1
JOIN employees e2
    ON e1.department_id = e2.department_id
    AND e1.employee_id < e2.employee_id
ORDER BY e1.employee_id, e2.employee_id;