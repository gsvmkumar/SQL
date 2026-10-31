--Q114

--Find the total stock supplied by each supplier.

--version 1
SELECT s.supplier_name, SUM(p.stock) AS total_stock
FROM suppliers s
LEFT JOIN products p
    ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY s.supplier_id;

--version 2
select p.supplier_id, sum(p.stock_quantity)
from products p
group by p.supplier_id
order by p.supplier_id;

--version 3
SELECT
    s.supplier_id,
    s.supplier_name,
    (
        SELECT SUM(p.stock_quantity)
        FROM products p
        WHERE p.supplier_id = s.supplier_id
    ) AS total_stock
FROM suppliers s
ORDER BY s.supplier_id;