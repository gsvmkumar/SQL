--Q140

--Use EXCEPT to find countries represented by suppliers but not
--customers.

--version 1
select country from suppliers
EXCEPT
select country from customers;

--version 2
SELECT DISTINCT s.country
FROM suppliers s
LEFT JOIN customers c
ON s.country = c.country
WHERE c.country IS NULL;