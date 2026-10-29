--Q087

--Display all categories and the number of products in each category,
--including empty categories.

--version 1
select c.category_name, count(p.product_id)
from categories c left join products p
on c.category_id=p.category_id
group by c.category_name;

--version 2
SELECT c.category_id,
       c.category_name,
       COUNT(p.product_id) AS product_count
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;