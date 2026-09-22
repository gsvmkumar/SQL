# PostgreSQL SQL Practice --- 200 Questions

> **Database:** PostgreSQL practice database created in `DB_Setup/`\
> **Goal:** Start from SQL fundamentals and progress through JOINs,
> subqueries, CTEs, set operations, and window functions.
>
> **Rule:** Solve the questions yourself first. Do not look for the
> solution until you have attempted the query.

------------------------------------------------------------------------

## Recommended Repository Structure

``` text
SQL/
├── DB_Setup/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   └── SQL_PRACTICE_QUESTIONS.md
│
├── 01_SELECT_BASICS/
├── 02_FILTERING/
├── 03_FUNCTIONS/
├── 04_GROUP_BY_HAVING/
├── 05_JOINS/
├── 06_SUBQUERIES/
├── 07_SET_OPERATIONS/
├── 08_CTE/
├── 09_CASE_NULL_DATE_STRING/
├── 10_WINDOW_FUNCTIONS/
└── 11_MIXED_INTERVIEW/
```

For each topic, create files such as:

``` text
01_SELECT_BASICS/
├── ques01.sql
├── ques02.sql
├── ques03.sql
└── ...
```

------------------------------------------------------------------------

# SECTION 1 --- SELECT BASICS

## Questions 1--15

### Q001

Display all columns and all rows from the `customers` table.

### Q002

Display only the customer ID, first name, last name, and email from
`customers`.

### Q003

Display the product ID, product name, price, and stock quantity from
`products`.

### Q004

Display all employees with only their employee ID, name, department ID,
and salary.

### Q005

Display all available categories.

### Q006

Display all suppliers with their supplier ID, supplier name, city, and
country.

### Q007

Display the order ID, customer ID, order date, status, and total amount
from `orders`.

### Q008

Display all columns from `order_items`.

### Q009

Display only successful/completed payments from `payments` using the
appropriate payment-status column.

### Q010

Display all shipment records with shipment ID, order ID, shipping date,
delivery date, and shipment status.

### Q011

Display product names with their prices, sorted by product name
alphabetically.

### Q012

Display employees sorted by salary from highest to lowest.

### Q013

Display customers sorted by last name and then first name.

### Q014

Display products sorted by price ascending and stock quantity
descending.

### Q015

Display the first 10 products based on product ID.

------------------------------------------------------------------------

# SECTION 2 --- FILTERING WITH WHERE

## Questions 16--30

### Q016

Find all products whose price is greater than 1000.

### Q017

Find all products whose price is less than 500.

### Q018

Find all products whose price is between 500 and 2000.

### Q019

Find all customers from a particular city present in the database.

### Q020

Find all employees whose salary is greater than 50000.

### Q021

Find all employees whose salary is between 30000 and 70000.

### Q022

Find all products whose stock quantity is less than 20.

### Q023

Find all products whose stock quantity is greater than or equal to 50.

### Q024

Find all orders having a specific status.

### Q025

Find all orders placed after a particular date.

### Q026

Find all orders placed between two dates.

### Q027

Find customers whose country belongs to a specified list of countries
using `IN`.

### Q028

Find products whose category ID belongs to a specified set of category
IDs.

### Q029

Find employees whose salary is NOT within a specified salary range.

### Q030

Find customers whose city is not one of the specified cities.

------------------------------------------------------------------------

# SECTION 3 --- DISTINCT, LIMIT, OFFSET, ALIASES

## Questions 31--40

### Q031

Find all distinct customer countries.

### Q032

Find all distinct employee department IDs.

### Q033

Find all distinct product category IDs.

### Q034

Find the 5 most expensive products.

### Q035

Find the 10 cheapest products.

### Q036

Find the 5 employees with the highest salaries.

### Q037

Find the second page of products using `LIMIT` and `OFFSET`, assuming 10
records per page.

### Q038

Create meaningful aliases for product name, price, and stock quantity.

### Q039

Display customers using a single concatenated full-name column.

### Q040

Find the 10 most recent orders.

------------------------------------------------------------------------

# SECTION 4 --- SQL FUNCTIONS

## Questions 41--55

### Q041

Find the total number of customers.

### Q042

Find the total number of products.

### Q043

Find the average product price.

### Q044

Find the maximum product price.

### Q045

Find the minimum product price.

### Q046

Find the total stock quantity across all products.

### Q047

Find the average employee salary.

### Q048

Find the highest employee salary.

### Q049

Find the lowest employee salary.

### Q050

Find the total order amount.

### Q051

Find the average order amount.

### Q052

Round the average order amount to 2 decimal places.

### Q053

Find the total number of orders.

### Q054

Find the number of distinct customer countries.

### Q055

Find the number of distinct product categories represented in
`products`.

------------------------------------------------------------------------

# SECTION 5 --- GROUP BY AND HAVING

## Questions 56--70

### Q056

Count customers by country.

### Q057

Count customers by city.

### Q058

Count employees by department.

### Q059

Find the average employee salary for each department.

### Q060

Find the maximum salary in each department.

### Q061

Find the minimum salary in each department.

### Q062

Find the total salary expense for each department.

### Q063

Count products in each category.

### Q064

Find the average product price for each category.

### Q065

Find the maximum product price in each category.

### Q066

Find the total stock quantity for each category.

### Q067

Count orders for each customer.

### Q068

Find the total amount spent by each customer.

### Q069

Find customers whose total spending is greater than 10000.

### Q070

Find departments having more than 5 employees.

------------------------------------------------------------------------

# SECTION 6 --- INNER JOIN

## Questions 71--82

### Q071

Join `customers` and `orders` to display customer names with their
orders.

### Q072

Display customer name, order ID, order date, and order amount.

### Q073

Join `orders` and `order_items` to display each order item.

### Q074

Join `products` and `order_items` to display product names and ordered
quantities.

### Q075

Join `products`, `order_items`, and `orders` to display product-level
order information.

### Q076

Join employees with departments to display employee names and department
names.

### Q077

Display each employee's department name and salary.

### Q078

Join products with categories to display product names and category
names.

### Q079

Join products with suppliers to display product and supplier
information.

### Q080

Join orders with payments to display order amount and payment
information.

### Q081

Join orders with shipments to display order and shipment status.

### Q082

Create a multi-table query showing customer name, order ID, product
name, quantity, and product price.

------------------------------------------------------------------------

# SECTION 7 --- LEFT JOIN

## Questions 83--94

### Q083

Display all customers and their orders, including customers who have
never placed an order.

### Q084

Find customers who have never placed an order.

### Q085

Display all products and their order items, including products that have
never been ordered.

### Q086

Find products that have never appeared in an order.

### Q087

Display all categories and the number of products in each category,
including empty categories.

### Q088

Display all departments and their employees, including departments with
no employees.

### Q089

Find departments that currently have no employees.

### Q090

Display all suppliers and their products, including suppliers without
products.

### Q091

Find suppliers that do not supply any products.

### Q092

Display all orders and payment records, including orders without a
payment record.

### Q093

Display all orders and shipment records, including orders without
shipment information.

### Q094

Find customers who have orders but no payment records associated with
those orders.

------------------------------------------------------------------------

# SECTION 8 --- RIGHT JOIN, FULL JOIN, SELF JOIN, CROSS JOIN

## Questions 95--105

### Q095

Rewrite a suitable `LEFT JOIN` query using a `RIGHT JOIN`.

### Q096

Use a `RIGHT JOIN` to display all departments and matching employees.

### Q097

Use a `FULL OUTER JOIN` between customers and orders to show unmatched
records from both sides.

### Q098

Use a `FULL OUTER JOIN` between products and order items to identify
unmatched products and order-item records.

### Q099

Use a `FULL OUTER JOIN` between departments and employees to show
departments without employees and employees without departments.

### Q100

Perform a `SELF JOIN` on the employees table to find employees who
belong to the same department.

### Q101

Using a `SELF JOIN`, display pairs of employees who work in the same
department without repeating reversed pairs.

### Q102

Using a `SELF JOIN`, find employees whose salary is lower than another
employee in the same department.

### Q103

Use a `CROSS JOIN` between two small tables and observe the Cartesian
product.

### Q104

Use a `CROSS JOIN` between categories and suppliers to generate every
possible category-supplier combination.

### Q105

Determine the number of rows produced by a cross join between two
selected tables.

------------------------------------------------------------------------

# SECTION 9 --- MULTI-TABLE JOIN AND AGGREGATION

## Questions 106--120

### Q106

Find the total amount spent by each customer using `customers` and
`orders`.

### Q107

Find the number of orders placed by each customer.

### Q108

Find the average order amount for each customer.

### Q109

Find the customer with the highest total spending.

### Q110

Find the total quantity sold for each product.

### Q111

Find the total revenue generated by each product.

### Q112

Find the total revenue generated by each category.

### Q113

Find the number of products supplied by each supplier.

### Q114

Find the total stock supplied by each supplier.

### Q115

Find the average product price for each supplier.

### Q116

Find the total number of items in each order.

### Q117

Find orders containing more than 3 different products.

### Q118

Find customers who purchased products from more than 2 categories.

### Q119

Find the department with the highest average employee salary.

### Q120

Find the category with the highest total sales revenue.

------------------------------------------------------------------------

# SECTION 10 --- SUBQUERIES

## Questions 121--135

### Q121

Find products whose price is greater than the average product price.

### Q122

Find employees whose salary is greater than the average employee salary.

### Q123

Find the employee with the highest salary using a subquery.

### Q124

Find products with the maximum price.

### Q125

Find customers whose total spending is greater than the average customer
spending.

### Q126

Find employees who earn more than the average salary of their
department.

### Q127

Find products that belong to the most expensive category based on
average category price.

### Q128

Find customers who have placed at least one order using `EXISTS`.

### Q129

Find customers who have never placed an order using `NOT EXISTS`.

### Q130

Find products that have been ordered at least once using `EXISTS`.

### Q131

Find products that have never been ordered using `NOT EXISTS`.

### Q132

Find orders whose total amount is greater than the average order amount.

### Q133

Find employees whose salary is equal to the maximum salary in their
department.

### Q134

Find customers who placed the most expensive order.

### Q135

Find products whose price is greater than every product in a selected
category.

------------------------------------------------------------------------

# SECTION 11 --- SET OPERATIONS

## Questions 136--145

### Q136

Use `UNION` to combine customer cities and supplier cities into one
distinct list.

### Q137

Use `UNION ALL` to combine customer countries and supplier countries
while retaining duplicates.

### Q138

Use `INTERSECT` to find countries appearing in both customers and
suppliers.

### Q139

Use `EXCEPT` to find countries represented by customers but not
suppliers.

### Q140

Use `EXCEPT` to find countries represented by suppliers but not
customers.

### Q141

Find cities that appear in both customers and suppliers.

### Q142

Find cities where customers exist but suppliers do not.

### Q143

Create a combined list of people from two compatible result sets using
`UNION`.

### Q144

Compare the result of `UNION` and `UNION ALL` for the same query.

### Q145

Use set operations to identify geographic locations represented in one
entity but not another.

------------------------------------------------------------------------

# SECTION 12 --- CTEs

## Questions 146--155

### Q146

Create a CTE containing products whose price is greater than 1000.

### Q147

Use a CTE to calculate total spending per customer.

### Q148

Using a CTE, find customers whose spending exceeds 10000.

### Q149

Create a CTE that calculates average salary by department.

### Q150

Use the department salary CTE to find departments above the overall
average salary.

### Q151

Create a CTE calculating total quantity sold per product.

### Q152

Use the product-sales CTE to find the top-selling products.

### Q153

Create two CTEs and join their results.

### Q154

Create a CTE that calculates customer order counts and then classify
customers based on order count.

### Q155

Use a multi-step CTE to calculate product revenue and then category
revenue.

------------------------------------------------------------------------

# SECTION 13 --- CASE, COALESCE, NULL, STRING AND DATE OPERATIONS

## Questions 156--170

### Q156

Use `CASE` to classify products as `Cheap`, `Medium`, or `Expensive`
based on price.

### Q157

Use `CASE` to classify employees into salary bands.

### Q158

Use `CASE` to classify orders based on order amount.

### Q159

Use `CASE` to determine whether a product is low-stock, normal-stock, or
high-stock.

### Q160

Use `COALESCE` to replace missing values with a meaningful default.

### Q161

Find rows containing NULL values in relevant columns.

### Q162

Compare the behavior of `COUNT(*)` and `COUNT(column)` on a nullable
column.

### Q163

Extract the year from order dates.

### Q164

Extract the month from order dates.

### Q165

Count orders by year.

### Q166

Count orders by month.

### Q167

Find orders placed in a specific year.

### Q168

Calculate the number of days between order date and shipment/delivery
date where applicable.

### Q169

Extract useful parts of customer names using PostgreSQL string
functions.

### Q170

Find customers whose names match a specified pattern using `LIKE` or
`ILIKE`.

------------------------------------------------------------------------

# SECTION 14 --- WINDOW FUNCTIONS: BASICS

## Questions 171--180

### Q171

Assign a row number to all employees ordered by salary descending using
`ROW_NUMBER()`.

### Q172

Assign row numbers to employees separately within each department.

### Q173

Rank all employees by salary using `RANK()`.

### Q174

Rank employees by salary within each department.

### Q175

Rank products by price within each category.

### Q176

Use `DENSE_RANK()` to rank employees by salary within each department.

### Q177

Compare `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()` on employee
salaries.

### Q178

Find the top 3 highest-paid employees in every department using a window
function.

### Q179

Find the second-highest-paid employee in every department.

### Q180

Find all employees tied for the highest salary in each department.

------------------------------------------------------------------------

# SECTION 15 --- WINDOW FUNCTIONS: AGGREGATE WINDOWS

## Questions 181--188

### Q181

Calculate the total salary of all employees while keeping every employee
row.

### Q182

Calculate the total salary for each employee's department using a window
function.

### Q183

Calculate the average salary of each employee's department.

### Q184

Show each employee's salary and the difference between their salary and
their department's average salary.

### Q185

Calculate the percentage contribution of each employee's salary to their
department's total salary.

### Q186

Calculate a running total of order amounts ordered by order date.

### Q187

Calculate a running total of sales for each customer ordered by order
date.

### Q188

Calculate a running average of order amounts over time.

------------------------------------------------------------------------

# SECTION 16 --- WINDOW FUNCTIONS: LAG, LEAD, FIRST_VALUE, LAST_VALUE

## Questions 189--194

### Q189

Use `LAG()` to display each customer's previous order amount.

### Q190

Use `LEAD()` to display each customer's next order amount.

### Q191

Calculate the difference between an order amount and the customer's
previous order amount.

### Q192

Find the first order amount for each customer using `FIRST_VALUE()`.

### Q193

Find the latest order amount for each customer using an appropriate
window frame with `LAST_VALUE()`.

### Q194

Calculate the change in order amount between consecutive orders for
every customer.

------------------------------------------------------------------------

# SECTION 17 --- WINDOW FUNCTIONS: PERCENT_RANK, CUME_DIST, NTILE

## Questions 195--200

### Q195

Calculate `PERCENT_RANK()` for employees based on salary.

### Q196

Calculate `CUME_DIST()` for employees based on salary.

### Q197

Divide employees into 4 salary groups using `NTILE(4)`.

### Q198

Divide products into 5 price groups using `NTILE(5)`.

### Q199

Find employees whose salary falls in the top 25% using an appropriate
window-function approach.

### Q200

For each department, rank employees by salary, calculate their
percentile position, and divide them into salary quartiles.

------------------------------------------------------------------------

# BONUS --- HOW TO PRACTICE EACH QUESTION

For every question, create a separate `.sql` file.

Example:

``` text
05_JOINS/
├── ques071.sql
├── ques072.sql
├── ques073.sql
└── ...
```

Inside each file:

``` sql
-- Q071
-- Topic: INNER JOIN
-- Description: Join customers and orders to display customer names with their orders.

SELECT
    ...
FROM customers c
INNER JOIN orders o
    ON ...;
```

After solving:

``` bash
git add .
git commit -m "Solved SQL Q071"
git push
```

------------------------------------------------------------------------

# Suggested Daily Progress

## Beginner Phase

-   Q001--Q070 → SELECT, filtering, functions, GROUP BY, HAVING
-   Focus on writing queries without looking at solutions.

## JOIN Phase

-   Q071--Q120 → JOINs and multi-table analysis
-   Spend extra time understanding why each JOIN is required.

## Advanced Query Phase

-   Q121--Q155 → Subqueries, set operations, and CTEs
-   Try solving some questions in more than one way.

## Window Function Phase

-   Q156--Q200 → CASE/NULL/date/string operations + window functions
-   For window functions, understand:
    -   `PARTITION BY`
    -   `ORDER BY`
    -   window frames
    -   `ROW_NUMBER()`
    -   `RANK()`
    -   `DENSE_RANK()`
    -   aggregate window functions
    -   `LAG()`
    -   `LEAD()`
    -   `FIRST_VALUE()`
    -   `LAST_VALUE()`
    -   `PERCENT_RANK()`
    -   `CUME_DIST()`
    -   `NTILE()`

------------------------------------------------------------------------

# Important Rule

Do **not** create one giant `practice.sql` file.

Use one file per question so your GitHub repository shows your actual
progression:

``` text
Question → Query → Commit → Progress
```

This will also make it easy to return later and revise individual SQL
concepts.
