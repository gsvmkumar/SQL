-- QUES199:
-- Find employees whose salary falls in the top 25% using an appropriate window-function approach.

SELECT
    employee_id,
    first_name,
    salary,
    CUME_DIST() OVER (ORDER BY salary DESC) AS salary_percentile
FROM employees
WHERE CUME_DIST() OVER (ORDER BY salary DESC) <= 0.25;