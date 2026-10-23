--Q033

--Find all distinct product category IDs.

select distinct category_id from products;

select distinct category_id, count(*) as cc from products
group by category_id
order by cc;