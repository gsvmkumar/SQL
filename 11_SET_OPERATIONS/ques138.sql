--Q138

--Use INTERSECT to find countries appearing in both customers and
--suppliers.

select country from customers
INtersect
select country from suppliers;