--Q091

--Find suppliers that do not supply any products.

select s.supplier_name
from suppliers s left join products p
on s.supplier_id=p.supplier_id
where p.product_id is null;