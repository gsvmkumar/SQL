--Q155

--Use a multi-step CTE to calculate product revenue and then category
--revenue.

with product_revenue(prod_id, revenue) as(
    select product_id, sum(quantity * unit_price)
    from order_items
    group by product_id
),
category_revenue(cat_id, revenue) as(
    select p.category_id, sum(pr.revenue)
    from products p
    join product_revenue pr on p.product_id = pr.prod_id
    group by p.category_id
)
select c.category_id, c.category_name, round(cr.revenue,2) as revenue
from category_revenue cr
join categories c on c.category_id = cr.cat_id
order by cr.revenue desc;