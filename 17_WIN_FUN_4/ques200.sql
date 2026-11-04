-- QUES200:
-- For each department, rank employees by salary, calculate their 
--percentile position, and divide them into salary quartiles.

SELECT
    department_id,
    employee_id,
    first_name,
    salary,
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank,
    CUME_DIST() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_percentile,
    NTILE(4) OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_quartile
FROM employees
ORDER BY department_id, salary DESC;