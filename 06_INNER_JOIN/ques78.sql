--Q078

--Join products with categories to display product names and category names.

select p.product_name as "Name", 
		c.category_name as "Category"
from products p join categories c
on p.category_id=c.category_id;