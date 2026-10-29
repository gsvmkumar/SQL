--Q090

--Display all suppliers and their products, including suppliers without
--products.

--version 1
select s.supplier_name, p.product_name
from suppliers s left join products p
on s.supplier_id=p.supplier_id;

--version 2
select s.supplier_name, count(p.product_name)
from suppliers s left join products p
on s.supplier_id=p.supplier_id
group by s.supplier_name;