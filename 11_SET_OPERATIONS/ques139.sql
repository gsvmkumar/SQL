--Q139

--Use EXCEPT to find countries represented by customers but not
--suppliers.

select country from customers
EXCEPT
select country from suppliers;