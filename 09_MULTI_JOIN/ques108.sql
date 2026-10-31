--Q108

--Find the average order amount for each customer.

--version 1
SELECT c.customer_id, AVG(o.order_amount) AS average_order_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
order BY c.customer_id;

--version 2
SELECT c.customer_id,
	   CONCAT(c.first_name,' ',c.last_name) as Name,
	   Round(AVG(o.total_amount),2) AS average_order_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
order BY c.customer_id;