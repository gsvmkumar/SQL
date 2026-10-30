--Q102

--Using a SELF JOIN, find employees whose salary is lower than another
--employee in the same department.


SELECT DISTINCT
    e1.employee_id,
    e1.first_name,
    e1.salary
FROM employees e1
JOIN employees e2
    ON e1.department_id = e2.department_id
    AND e1.employee_id <> e2.employee_id
    AND e1.salary < e2.salary
ORDER BY e1.employee_id;