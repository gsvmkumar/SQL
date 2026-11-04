-- QUES195:
-- Calculate PERCENT_RANK() for employees based on salary.

SELECT
    employee_id,
    first_name,
    RANK() OVER (
        ORDER BY salary
    ) AS salary_rank,
    PERCENT_RANK() OVER (
        ORDER BY salary
    ) AS percent_rank
FROM employees;