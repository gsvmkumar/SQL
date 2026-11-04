-- Q172
-- Assign row numbers to employees separately within each department.

--version 1
SELECT
    employee_id,
    department_id,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS rn
FROM employees;

--version 2
SELECT
    employee_id,
    department_id,
    salary,
    ROW_NUMBER() OVER(
        PARTITION BY department_id
        ORDER BY employee_id
    ) AS rn
FROM employees;

--version 3
WITH employee_numbers AS (
    SELECT
        employee_id,
        department_id,
        salary,
        ROW_NUMBER() OVER(
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS rn
    FROM employees
)
SELECT *
FROM employee_numbers;