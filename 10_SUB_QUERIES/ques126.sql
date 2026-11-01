--Q126

--Find employees who earn more than the average salary of their department.

SELECT e.employee_id,
       e.first_name,
       e.last_name,
       e.department_id,
       e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(department_employee.salary)
    FROM employees department_employee
    WHERE department_employee.department_id = e.department_id
)
ORDER BY e.department_id, e.salary DESC;