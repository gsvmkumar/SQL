--Q037

--Find the second page of products using LIMIT and OFFSET, assuming 10
--records per page.

--version 1
select * from products
Offset 10
limit 10;

--version 2
select *
from (
    select *,
    row_number() over (order by product_id) as row_num
    from products
) as t
where row_num > 10 and row_num <= 20;