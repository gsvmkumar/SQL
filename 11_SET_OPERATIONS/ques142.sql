--Q142

--Find cities where customers exist but suppliers do not.

--version 1
select city from customers
except
select city from suppliers;

--version 2
select distinct city from customers
where city not in (
    select city from suppliers
);

--version 2.1
SELECT DISTINCT c.city
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE s.city = c.city
);