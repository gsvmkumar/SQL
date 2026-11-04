-- Q185
-- Calculate the percentage contribution of each employee's salary to their department's total salary.

--version 1
SELECT
    employee_id,
    first_name,
    department_id,
    salary,
    SUM(salary) OVER (
        PARTITION BY department_id
    ) AS total_department_salary,
    ROUND(
        salary * 100.0 /
        SUM(salary) OVER (
            PARTITION BY department_id
        ),
        2
    ) AS percentage_contribution
FROM employees;

--version 2
WITH DepartmentSalary AS (
    SELECT 
        department_id,
        SUM(salary) AS total_salary
    FROM 
        employees
    GROUP BY 
        department_id
)
SELECT 
    e.employee_id,
    e.salary,
    ds.total_salary,
    (e.salary / ds.total_salary) * 100 AS percentage_contribution
FROM 
    employees e
JOIN 
    DepartmentSalary ds ON e.department_id = ds.department_id;