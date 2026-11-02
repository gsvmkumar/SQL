--Q141

--Find cities that appear in both customers and suppliers.

--version 1
select city from customers
Intersect
select city from suppliers;

--version 2
select distinct city from customers c
where c.city IN  (
    select distinct s.city from suppliers s
);