--Q169

--Extract useful parts of customer names using PostgreSQL string
--functions.

--version 1
SELECT
    INITCAP(first_name) AS formatted_first_name,
    INITCAP(last_name) AS formatted_last_name
FROM customers;

--version 2
SELECT
    first_name,
    REPLACE(first_name, 'a', '@') AS modified_name
FROM customers;