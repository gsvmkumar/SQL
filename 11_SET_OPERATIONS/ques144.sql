--Q144

--Compare the result of UNION and UNION ALL for the same query.


--version 1
SELECT city
FROM customers
UNION
SELECT city
FROM suppliers;

--version 2
SELECT city
FROM customers
UNION ALL
SELECT city
FROM suppliers;