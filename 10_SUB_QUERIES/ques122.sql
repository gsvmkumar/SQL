--Q122

--Find employees whose salary is greater than the average employee salary.

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(COALESCE(salary, 0))
    FROM employees
)
ORDER BY salary DESC;
