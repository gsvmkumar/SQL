-- QUES197:
-- Divide employees into 4 salary groups using NTILE(4).

SELECT
    employee_id,
    first_name,
    salary,
    NTILE(4) OVER (ORDER BY salary) AS salary_group
FROM employees;