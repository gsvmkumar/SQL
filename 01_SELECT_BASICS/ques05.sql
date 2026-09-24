--### Q005

--Display all available categories.

select distinct category_name from categories;


--version 2 just to test joins

select distinct c.category_name 
from categories c join products p
on c.category_id=p.category_id;