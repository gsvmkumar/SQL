--Q104

--Use a CROSS JOIN between categories and suppliers to generate every
--possible category-supplier combination.

select c.category_name, s.supplier_name
from categories c
cross join suppliers s;