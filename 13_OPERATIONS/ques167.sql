--Q167

--Find orders placed in a specific year.

select * from orders
where EXTRACT(year from order_date)=2023;