--Q145

--Use set operations to identify geographic locations represented in
--one entity but not another.

--version 1
SELECT city
FROM customers
EXCEPT
SELECT city
FROM suppliers;

--version2
SELECT DISTINCT c.city
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM suppliers s
    WHERE s.city = c.city
);

--version 3
SELECT DISTINCT c.city
FROM customers c
LEFT JOIN suppliers s
    ON c.city = s.city
WHERE s.supplier_id IS NULL;