--Q115

--Find the average product price for each supplier.

--version 1
select s.supplier_name, round(avg(p.price),2) as average_price
from suppliers s
left join products p
    on s.supplier_id = p.supplier_id
group by s.supplier_id, s.supplier_name
order by s.supplier_id;

--version 2
select p.supplier_id, round(avg(p.price),2) as average_price
from products p
group by p.supplier_id
order by p.supplier_id;