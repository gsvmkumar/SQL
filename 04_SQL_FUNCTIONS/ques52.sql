--Q052

--Round the average order amount to 2 decimal places.

select round(avg(total_amount),2) as "Avg order amount" from orders;