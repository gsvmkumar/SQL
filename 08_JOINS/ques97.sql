--Q097

--Use a FULL OUTER JOIN between customers and orders to show unmatched
--records from both sides.

SELECT d.department_name, e.first_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;