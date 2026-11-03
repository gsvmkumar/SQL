--Q162

--Compare the behavior of COUNT(*) and COUNT(column) on a nullable
--column.

select COUNT(*) as "Total Rows",
       COUNT(stock_quantity) as "Rows with Non-Null Stock"
from products;