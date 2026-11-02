--Q143

--Create a combined list of people from two compatible result sets
--using UNION.

SELECT
    first_name,
    last_name,
    'Employee' AS person_type
FROM employees

UNION

SELECT
    first_name,
    last_name,
    'Customer' AS person_type
FROM customers;