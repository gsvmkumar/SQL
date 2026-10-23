--Q038

--Create meaningful aliases for product name, price, and stock quantity.

--version 1
select product_name as "Name", 
       price as "Cost", 
       stock_quantity as "Available Quantity"
from products;

--version 2
select product_name as Name, 
       price as Cost, 
       stock_quantity as Available_Quantity
from products;