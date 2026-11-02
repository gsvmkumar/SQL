--Q136

--Use UNION to combine customer cities and supplier cities into one
--distinct list.

select city from customers
UNION
select city from suppliers;