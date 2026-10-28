--Q079

--Join products with suppliers to display product and supplier information.

select p.product_name, s.supplier_name, s.city
from products p join suppliers s
on p.supplier_id=s.supplier_id;