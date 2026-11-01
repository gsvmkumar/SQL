--Q133

--Find employees whose salary is equal to the maximum salary in their department.

SELECT e.employee_id,
       e.first_name,
       e.last_name,
       e.department_id,
       e.salary
FROM employees e
WHERE e.salary = (
    SELECT MAX(department_employee.salary)
    FROM employees department_employee
    WHERE department_employee.department_id = e.department_id
)
ORDER BY e.department_id;
