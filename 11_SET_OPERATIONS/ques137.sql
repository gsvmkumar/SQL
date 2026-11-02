--Q137

--Use UNION ALL to combine customer countries and supplier countries
--while retaining duplicates.

select country from customers
UNION ALL
select country from suppliers;