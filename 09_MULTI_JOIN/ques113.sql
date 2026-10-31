--Q113

--Find the number of products supplied by each supplier.

--version 1
select p.supplier_id, count(*)
from products p
group by p.supplier_id
order by p.supplier_id;

--version 2
select s.supplier_name, count(*)
from products p join suppliers s
on p.supplier_id=s.supplier_id
group by s.supplier_id,s.supplier_name;

--version 3
SELECT
    s.supplier_id,
    s.supplier_name,
    COUNT(p.product_id) AS total_products
FROM suppliers s
LEFT JOIN products p
    ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY s.supplier_id;