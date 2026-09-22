/*
============================================================
02_create_tables.sql
============================================================

Database:
    sql_practice_db

Purpose:
    Creates all tables required for SQL practice.

Topics this database supports:
    - SELECT / WHERE / ORDER BY
    - GROUP BY / HAVING
    - INNER JOIN
    - LEFT JOIN
    - RIGHT JOIN
    - FULL OUTER JOIN
    - CROSS JOIN
    - SELF JOIN
    - Subqueries
    - CTEs
    - UNION / UNION ALL
    - INTERSECT
    - EXCEPT
    - CASE
    - COALESCE / NULLIF
    - Date and string functions
    - Aggregate functions
    - Window functions
    - Ranking functions
    - Later: Functions / Procedures / Triggers

IMPORTANT:
    Run this file inside:

        sql_practice_db

============================================================
*/


/*
============================================================
1. DROP EXISTING TABLES
============================================================

This allows you to safely run this setup again.

CASCADE removes dependent objects if necessary.
============================================================
*/

DROP TABLE IF EXISTS shipments CASCADE;
DROP TABLE IF EXISTS payments CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS suppliers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;


/*
============================================================
2. DEPARTMENTS
============================================================

Stores company departments.

Relationship:

departments
     |
     | 1
     |
     | N
employees
============================================================
*/

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,

    department_name VARCHAR(100)
        NOT NULL
        UNIQUE,

    location VARCHAR(100),

    budget NUMERIC(14,2),

    created_at DATE
        DEFAULT CURRENT_DATE
);


/*
============================================================
3. EMPLOYEES
============================================================

Stores employees.

department_id:
    Connects employee to department.

manager_id:
    SELF JOIN relationship.
    An employee can have another employee as manager.

Example:

Employee
   |
   +---- manager_id ----> another employee
============================================================
*/

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,

    first_name VARCHAR(50)
        NOT NULL,

    last_name VARCHAR(50)
        NOT NULL,

    email VARCHAR(120)
        UNIQUE,

    department_id INT,

    manager_id INT,

    job_title VARCHAR(100),

    salary NUMERIC(12,2),

    hire_date DATE,

    city VARCHAR(100),

    gender VARCHAR(20),

    performance_score NUMERIC(5,2),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    CONSTRAINT fk_employee_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);


/*
============================================================
4. CUSTOMERS
============================================================

Stores customer information.

referred_by:
    SELF JOIN relationship.

One customer can refer another customer.

Useful for practicing:
    SELF JOIN
    LEFT JOIN
    Recursive relationships
============================================================
*/

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,

    first_name VARCHAR(50)
        NOT NULL,

    last_name VARCHAR(50)
        NOT NULL,

    email VARCHAR(120)
        UNIQUE,

    phone VARCHAR(20),

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100)
        DEFAULT 'India',

    signup_date DATE,

    customer_type VARCHAR(30),

    credit_limit NUMERIC(12,2),

    referred_by INT,

    CONSTRAINT fk_customer_referrer
        FOREIGN KEY (referred_by)
        REFERENCES customers(customer_id)
);


/*
============================================================
5. CATEGORIES
============================================================

Product categories.

parent_category_id:
    SELF JOIN relationship.

Example:

Electronics
    |
    +-- Computers
    |
    +-- Mobile Devices
    |
    +-- Audio

Useful for:
    SELF JOIN
    Hierarchical data
============================================================
*/

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,

    category_name VARCHAR(100)
        NOT NULL
        UNIQUE,

    parent_category_id INT,

    CONSTRAINT fk_category_parent
        FOREIGN KEY (parent_category_id)
        REFERENCES categories(category_id)
);


/*
============================================================
6. SUPPLIERS
============================================================

Stores product suppliers.

Relationship:

suppliers
    |
    | 1
    |
    | N
products
============================================================
*/

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,

    supplier_name VARCHAR(150)
        NOT NULL,

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100)
        DEFAULT 'India',

    rating NUMERIC(3,2),

    established_year INT
);


/*
============================================================
7. PRODUCTS
============================================================

Stores products.

Each product can belong to:
    - one category
    - one supplier

Useful for:
    JOIN
    GROUP BY
    Aggregation
    Subqueries
    Window functions
============================================================
*/

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,

    product_name VARCHAR(150)
        NOT NULL,

    category_id INT,

    supplier_id INT,

    price NUMERIC(12,2),

    cost_price NUMERIC(12,2),

    stock_quantity INT,

    reorder_level INT,

    brand VARCHAR(100),

    rating NUMERIC(3,2),

    created_at DATE,

    discontinued BOOLEAN
        DEFAULT FALSE,

    CONSTRAINT fk_product_category
        FOREIGN KEY (category_id)
        REFERENCES categories(category_id),

    CONSTRAINT fk_product_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)
);


/*
============================================================
8. ORDERS
============================================================

Stores customer orders.

Relationships:

customers
    |
    | 1
    |
    | N
orders

employees
    |
    | 1
    |
    | N
orders
============================================================
*/

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,

    customer_id INT,

    employee_id INT,

    order_date TIMESTAMP,

    status VARCHAR(30),

    shipping_city VARCHAR(100),

    shipping_state VARCHAR(100),

    total_amount NUMERIC(12,2),

    discount_amount NUMERIC(12,2),

    tax_amount NUMERIC(12,2),

    payment_method VARCHAR(50),

    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_order_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);


/*
============================================================
9. ORDER ITEMS
============================================================

An order can contain multiple products.

Example:

Order 101
    |
    +-- Product A
    |
    +-- Product B
    |
    +-- Product C

This creates a many-to-many relationship between:

orders <----> products

through:

order_items
============================================================
*/

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,

    order_id INT,

    product_id INT,

    quantity INT
        CHECK (quantity > 0),

    unit_price NUMERIC(12,2),

    discount_percent NUMERIC(5,2),

    CONSTRAINT fk_order_item_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_order_item_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


/*
============================================================
10. PAYMENTS
============================================================

Stores payment information for orders.

Some orders will intentionally have NO payment record.

This is useful for practicing:

    LEFT JOIN
    IS NULL
    NOT EXISTS
    Anti joins
============================================================
*/

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,

    order_id INT,

    payment_date TIMESTAMP,

    amount NUMERIC(12,2),

    payment_method VARCHAR(50),

    payment_status VARCHAR(30),

    transaction_id VARCHAR(100)
        UNIQUE,

    CONSTRAINT fk_payment_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);


/*
============================================================
11. SHIPMENTS
============================================================

Stores shipment information.

Some orders will intentionally have NO shipment.

Useful for:

    LEFT JOIN
    RIGHT JOIN
    FULL JOIN
    NULL handling
    Date calculations
============================================================
*/

CREATE TABLE shipments (
    shipment_id SERIAL PRIMARY KEY,

    order_id INT,

    shipped_date DATE,

    delivered_date DATE,

    courier VARCHAR(100),

    shipping_cost NUMERIC(10,2),

    shipment_status VARCHAR(30),

    CONSTRAINT fk_shipment_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);


/*
============================================================
12. INDEXES
============================================================

These are not required for basic SQL practice, but they make
the database more realistic and allow you to later study:

    - Indexes
    - Query performance
    - EXPLAIN
    - EXPLAIN ANALYZE
============================================================
*/


/* Employee indexes */

CREATE INDEX idx_employees_department
ON employees(department_id);

CREATE INDEX idx_employees_manager
ON employees(manager_id);


/* Customer indexes */

CREATE INDEX idx_customers_city
ON customers(city);


/* Order indexes */

CREATE INDEX idx_orders_customer
ON orders(customer_id);

CREATE INDEX idx_orders_employee
ON orders(employee_id);

CREATE INDEX idx_orders_date
ON orders(order_date);

CREATE INDEX idx_orders_status
ON orders(status);


/* Product indexes */

CREATE INDEX idx_products_category
ON products(category_id);

CREATE INDEX idx_products_supplier
ON products(supplier_id);


/* Order item indexes */

CREATE INDEX idx_order_items_order
ON order_items(order_id);

CREATE INDEX idx_order_items_product
ON order_items(product_id);


/* Payment indexes */

CREATE INDEX idx_payments_order
ON payments(order_id);


/* Shipment indexes */

CREATE INDEX idx_shipments_order
ON shipments(order_id);


/*
============================================================
13. VERIFY TABLES
============================================================

After running the script, this query should show:

categories
customers
departments
employees
order_items
orders
payments
products
shipments
suppliers
============================================================
*/

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;