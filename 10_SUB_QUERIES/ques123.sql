--Q123

--Find the employee with the highest salary using a subquery.

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
