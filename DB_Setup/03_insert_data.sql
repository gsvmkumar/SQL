/*
============================================================
03_insert_data.sql
============================================================

Database:
    sql_practice_db

Purpose:
    Insert practice data into all tables.

Dataset:
    Departments   -> 10
    Employees     -> 50
    Customers     -> 60
    Categories    -> 16
    Suppliers     -> 12
    Products      -> 35
    Orders        -> 180
    Order Items   -> 360
    Payments      -> 166
    Shipments     -> 160

The data intentionally contains:
    - duplicate cities
    - duplicate salaries
    - duplicate ratings
    - NULL values
    - customers without orders
    - orders without payments
    - orders without shipments
    - employees with managers
    - customers with referrers
    - categories with parent categories
    - discontinued products
    - different order statuses
    - different payment statuses
    - multiple orders per customer
    - multiple products per order
    - multiple customers per city

This makes the database suitable for interview-style SQL
practice.

============================================================
*/


/*
============================================================
1. DEPARTMENTS
============================================================
*/

INSERT INTO departments
    (department_name, location, budget)
VALUES
    ('Engineering', 'Bangalore', 2500000),
    ('Sales', 'Hyderabad', 1800000),
    ('Marketing', 'Mumbai', 1500000),
    ('Human Resources', 'Pune', 900000),
    ('Finance', 'Chennai', 1200000),
    ('Customer Support', 'Bangalore', 1100000),
    ('Operations', 'Delhi', 1600000),
    ('Research', 'Hyderabad', 2200000),
    ('Legal', 'Mumbai', 800000),
    ('Administration', 'Pune', 700000);


/*
============================================================
2. EMPLOYEES
============================================================

50 employees.

The first 10 employees are managers.

The remaining employees report to those managers.

This gives us a SELF JOIN relationship.
============================================================
*/

INSERT INTO employees
    (
        first_name,
        last_name,
        email,
        department_id,
        manager_id,
        job_title,
        salary,
        hire_date,
        city,
        gender,
        performance_score
    )
VALUES

-- Managers

('Aarav', 'Reddy', 'aarav.reddy1@company.com', 1, NULL,
 'Engineering Manager', 142000, '2019-01-08',
 'Bangalore', 'Male', 91.20),

('Ananya', 'Sharma', 'ananya.sharma2@company.com', 2, NULL,
 'Sales Manager', 149000, '2020-04-15',
 'Hyderabad', 'Female', 88.50),

('Rahul', 'Kumar', 'rahul.kumar3@company.com', 3, NULL,
 'Marketing Manager', 156000, '2021-07-22',
 'Mumbai', 'Male', 94.10),

('Sneha', 'Patel', 'sneha.patel4@company.com', 4, NULL,
 'Human Resources Manager', 163000, '2022-10-11',
 'Pune', 'Female', 86.70),

('Vikram', 'Singh', 'vikram.singh5@company.com', 5, NULL,
 'Finance Manager', 170000, '2018-02-19',
 'Chennai', 'Male', 92.40),

('Priya', 'Nair', 'priya.nair6@company.com', 6, NULL,
 'Customer Support Manager', 177000, '2019-05-26',
 'Bangalore', 'Female', 89.80),

('Rohan', 'Gupta', 'rohan.gupta7@company.com', 7, NULL,
 'Operations Manager', 184000, '2020-08-13',
 'Delhi', 'Male', 95.30),

('Divya', 'Rao', 'divya.rao8@company.com', 8, NULL,
 'Research Manager', 141000, '2021-11-20',
 'Hyderabad', 'Female', 90.60),

('Karan', 'Mehta', 'karan.mehta9@company.com', 9, NULL,
 'Legal Manager', 148000, '2022-03-17',
 'Mumbai', 'Male', 84.90),

('Pooja', 'Shah', 'pooja.shah10@company.com', 10, NULL,
 'Administration Manager', 155000, '2018-06-24',
 'Pune', 'Female', 87.30),


-- Employees

('Amit', 'Verma', 'amit.verma11@company.com', 1, 1,
 'Software Engineer', 85000, '2021-01-10',
 'Bangalore', 'Male', 88.20),

('Neha', 'Joshi', 'neha.joshi12@company.com', 2, 2,
 'Sales Executive', 72000, '2022-02-14',
 'Hyderabad', 'Female', 91.40),

('Suresh', 'Babu', 'suresh.babu13@company.com', 3, 3,
 'Marketing Analyst', 68000, '2020-03-18',
 'Mumbai', 'Male', 82.60),

('Kavya', 'Yadav', 'kavya.yadav14@company.com', 4, 4,
 'HR Executive', 65000, '2021-04-22',
 'Pune', 'Female', 93.50),

('Manish', 'Mishra', 'manish.mishra15@company.com', 5, 5,
 'Financial Analyst', 90000, '2019-05-16',
 'Chennai', 'Male', 89.70),

('Swati', 'Jain', 'swati.jain16@company.com', 6, 6,
 'Support Specialist', 62000, '2022-06-19',
 'Bangalore', 'Female', 85.30),

('Rakesh', 'Khan', 'rakesh.khan17@company.com', 7, 7,
 'Operations Analyst', 78000, '2020-07-21',
 'Delhi', 'Male', 90.80),

('Ayesha', 'Sen', 'ayesha.sen18@company.com', 8, 8,
 'Research Associate', 82000, '2021-08-25',
 'Hyderabad', 'Female', 94.20),

('Deepak', 'Agarwal', 'deepak.agarwal19@company.com', 9, 9,
 'Legal Associate', 76000, '2022-09-12',
 'Mumbai', 'Male', 81.50),

('Nandini', 'Kapoor', 'nandini.kapoor20@company.com', 10, 10,
 'Administrative Associate', 64000, '2019-10-28',
 'Pune', 'Female', 87.90),

('Harsh', 'Reddy', 'harsh.reddy21@company.com', 1, 1,
 'Software Engineer', 95000, '2020-01-12',
 'Bangalore', 'Male', 96.10),

('Riya', 'Sharma', 'riya.sharma22@company.com', 2, 2,
 'Sales Executive', 70000, '2021-02-16',
 'Hyderabad', 'Female', 83.40),

('Aman', 'Kumar', 'aman.kumar23@company.com', 3, 3,
 'Marketing Executive', 74000, '2022-03-20',
 'Mumbai', 'Male', 88.80),

('Shreya', 'Patel', 'shreya.patel24@company.com', 4, 4,
 'HR Specialist', 69000, '2020-04-24',
 'Pune', 'Female', 91.70),

('Mohit', 'Singh', 'mohit.singh25@company.com', 5, 5,
 'Financial Analyst', 92000, '2021-05-18',
 'Chennai', 'Male', 90.30),

('Tanvi', 'Nair', 'tanvi.nair26@company.com', 6, 6,
 'Support Associate', 61000, '2022-06-22',
 'Bangalore', 'Female', 84.60),

('Aditya', 'Gupta', 'aditya.gupta27@company.com', 7, 7,
 'Operations Executive', 79000, '2019-07-24',
 'Delhi', 'Male', 92.10),

('Komal', 'Rao', 'komal.rao28@company.com', 8, 8,
 'Research Analyst', 87000, '2020-08-28',
 'Hyderabad', 'Female', 95.40),

('Abhishek', 'Mehta', 'abhishek.mehta29@company.com', 9, 9,
 'Legal Analyst', 81000, '2021-09-15',
 'Mumbai', 'Male', 86.30),

('Lakshmi', 'Shah', 'lakshmi.shah30@company.com', 10, 10,
 'Admin Executive', 67000, '2022-10-30',
 'Pune', 'Female', 89.10),

('Varun', 'Verma', 'varun.verma31@company.com', 1, 1,
 'Backend Developer', 98000, '2021-01-14',
 'Bangalore', 'Male', 97.20),

('Isha', 'Joshi', 'isha.joshi32@company.com', 2, 2,
 'Sales Analyst', 73000, '2020-02-18',
 'Hyderabad', 'Female', 85.70),

('Gaurav', 'Babu', 'gaurav.babu33@company.com', 3, 3,
 'Marketing Analyst', 71000, '2021-03-22',
 'Mumbai', 'Male', 90.50),

('Meera', 'Yadav', 'meera.yadav34@company.com', 4, 4,
 'HR Associate', 66000, '2022-04-26',
 'Pune', 'Female', 92.80),

('Sanjay', 'Mishra', 'sanjay.mishra35@company.com', 5, 5,
 'Finance Executive', 88000, '2020-05-20',
 'Chennai', 'Male', 87.60),

('Harini', 'Jain', 'harini.jain36@company.com', 6, 6,
 'Support Specialist', 63000, '2021-06-24',
 'Bangalore', 'Female', 86.90),

('Yash', 'Khan', 'yash.khan37@company.com', 7, 7,
 'Operations Associate', 75000, '2022-07-26',
 'Delhi', 'Male', 91.60),

('Sonia', 'Sen', 'sonia.sen38@company.com', 8, 8,
 'Research Associate', 84000, '2019-08-30',
 'Hyderabad', 'Female', 93.70),

('Arjun', 'Agarwal', 'arjun.agarwal39@company.com', 9, 9,
 'Legal Associate', 77000, '2020-09-17',
 'Mumbai', 'Male', 83.80),

('Maya', 'Kapoor', 'maya.kapoor40@company.com', 10, 10,
 'Admin Specialist', 68000, '2021-10-25',
 'Pune', 'Female', 88.40),

('Aarav', 'Sharma', 'aarav.sharma41@company.com', 1, 1,
 'Java Developer', 105000, '2022-01-15',
 'Bangalore', 'Male', 98.10),

('Ananya', 'Kumar', 'ananya.kumar42@company.com', 2, 2,
 'Sales Executive', 71000, '2020-02-20',
 'Hyderabad', 'Female', 84.30),

('Rahul', 'Patel', 'rahul.patel43@company.com', 3, 3,
 'Marketing Specialist', 76000, '2021-03-24',
 'Mumbai', 'Male', 89.90),

('Sneha', 'Singh', 'sneha.singh44@company.com', 4, 4,
 'HR Specialist', 70000, '2022-04-28',
 'Pune', 'Female', 94.50),

('Vikram', 'Nair', 'vikram.nair45@company.com', 5, 5,
 'Finance Analyst', 94000, '2019-05-22',
 'Chennai', 'Male', 91.80),

('Priya', 'Gupta', 'priya.gupta46@company.com', 6, 6,
 'Support Executive', 65000, '2020-06-26',
 'Bangalore', 'Female', 87.20),

('Rohan', 'Rao', 'rohan.rao47@company.com', 7, 7,
 'Operations Analyst', 80000, '2021-07-28',
 'Delhi', 'Male', 93.10),

('Divya', 'Mehta', 'divya.mehta48@company.com', 8, 8,
 'Research Scientist', 99000, '2022-08-31',
 'Hyderabad', 'Female', 96.80),

('Karan', 'Shah', 'karan.shah49@company.com', 9, 9,
 'Legal Executive', 79000, '2020-09-19',
 'Mumbai', 'Male', 85.90),

('Pooja', 'Verma', 'pooja.verma50@company.com', 10, 10,
 'Administration Executive', 69000, '2021-10-27',
 'Pune', 'Female', 90.70);


/*
============================================================
3. CATEGORIES
============================================================
*/

INSERT INTO categories
    (category_name, parent_category_id)
VALUES
    ('Electronics', NULL),
    ('Computers', 1),
    ('Mobile Devices', 1),
    ('Audio', 1),

    ('Home Appliances', NULL),
    ('Kitchen Appliances', 5),
    ('Smart Home', 5),

    ('Fashion', NULL),
    ('Men Fashion', 8),
    ('Women Fashion', 8),

    ('Books', NULL),
    ('Programming Books', 11),
    ('Business Books', 11),

    ('Sports', NULL),
    ('Fitness Equipment', 14),
    ('Outdoor Sports', 14);


/*
============================================================
4. SUPPLIERS
============================================================
*/

INSERT INTO suppliers
    (
        supplier_name,
        city,
        state,
        country,
        rating,
        established_year
    )
VALUES
    ('TechWorld Supplies', 'Bangalore', 'Karnataka', 'India', 4.70, 2005),

    ('Global Electronics', 'Mumbai', 'Maharashtra', 'India', 4.50, 2010),

    ('Smart Devices Ltd', 'Delhi', 'Delhi', 'India', 4.30, 2012),

    ('AudioHub', 'Chennai', 'Tamil Nadu', 'India', 4.60, 2008),

    ('HomeTech', 'Pune', 'Maharashtra', 'India', 4.10, 2015),

    ('KitchenPro', 'Hyderabad', 'Telangana', 'India', 4.40, 2011),

    ('FashionHub', 'Mumbai', 'Maharashtra', 'India', 4.20, 2007),

    ('StyleWorld', 'Delhi', 'Delhi', 'India', 4.30, 2013),

    ('BookHouse', 'Kolkata', 'West Bengal', 'India', 4.80, 2002),

    ('SportZone', 'Bangalore', 'Karnataka', 'India', 4.50, 2009),

    ('FitLife', 'Chennai', 'Tamil Nadu', 'India', 4.60, 2014),

    ('GlobalBooks', 'Delhi', 'Delhi', 'India', 4.10, 2016);


/*
============================================================
5. PRODUCTS
============================================================
*/

INSERT INTO products
    (
        product_name,
        category_id,
        supplier_id,
        price,
        cost_price,
        stock_quantity,
        reorder_level,
        brand,
        rating,
        created_at,
        discontinued
    )
VALUES

('Dell Inspiron 15', 2, 1, 65000, 52000, 75, 10,
 'Dell', 4.50, '2020-01-15', FALSE),

('HP Pavilion 14', 2, 1, 72000, 59000, 62, 12,
 'HP', 4.40, '2020-03-18', FALSE),

('Lenovo ThinkPad E14', 2, 2, 78000, 64000, 48, 10,
 'Lenovo', 4.70, '2021-05-20', FALSE),

('MacBook Air M2', 2, 2, 105000, 85000, 35, 8,
 'Apple', 4.90, '2022-07-10', FALSE),

('iPhone 15', 3, 3, 75000, 65000, 80, 15,
 'Apple', 4.80, '2023-09-15', FALSE),

('Samsung Galaxy S24', 3, 3, 68000, 56000, 72, 12,
 'Samsung', 4.70, '2024-01-20', FALSE),

('OnePlus 12', 3, 3, 60000, 50000, 55, 10,
 'OnePlus', 4.60, '2024-02-12', FALSE),

('Google Pixel 8', 3, 3, 72000, 60000, 42, 8,
 'Google', 4.60, '2023-10-18', FALSE),

('Sony WH-1000XM5', 4, 4, 30000, 24000, 65, 10,
 'Sony', 4.90, '2021-06-15', FALSE),

('JBL Tune 760NC', 4, 4, 7500, 5500, 90, 15,
 'JBL', 4.40, '2021-08-20', FALSE),

('Boat Rockerz 550', 4, 4, 2500, 1800, 120, 20,
 'Boat', 4.30, '2022-02-10', FALSE),

('LG Smart TV 55', 7, 5, 65000, 52000, 30, 6,
 'LG', 4.50, '2020-11-15', FALSE),

('Samsung Smart TV 65', 7, 5, 85000, 70000, 25, 5,
 'Samsung', 4.70, '2021-12-12', FALSE),

('Philips Air Fryer', 6, 6, 9000, 6500, 70, 12,
 'Philips', 4.40, '2022-03-18', FALSE),

('Prestige Mixer Grinder', 6, 6, 5500, 4000, 85, 15,
 'Prestige', 4.20, '2021-07-22', FALSE),

('Nike Running Shoes', 9, 7, 8000, 5800, 95, 20,
 'Nike', 4.70, '2020-08-10', FALSE),

('Adidas Sports Shoes', 9, 7, 7500, 5400, 88, 18,
 'Adidas', 4.60, '2021-04-15', FALSE),

('Levis 511 Jeans', 9, 7, 4000, 2800, 110, 25,
 'Levis', 4.50, '2019-06-20', FALSE),

('Zara Women Dress', 10, 8, 6000, 4200, 72, 15,
 'Zara', 4.40, '2022-05-12', FALSE),

('H&M Women Jacket', 10, 8, 5000, 3500, 68, 12,
 'H&M', 4.30, '2021-09-18', FALSE),

('Clean Code', 12, 9, 900, 550, 150, 30,
 'Prentice Hall', 4.80, '2018-01-10', FALSE),

('Effective Java', 12, 9, 1200, 700, 130, 25,
 'Pearson', 4.90, '2019-02-15', FALSE),

('Design Patterns', 12, 9, 1100, 650, 100, 20,
 'Addison-Wesley', 4.70, '2018-05-20', FALSE),

('The Pragmatic Programmer', 12, 9, 1000, 600, 95, 20,
 'Addison-Wesley', 4.80, '2020-08-15', FALSE),

('Atomic Habits', 13, 9, 700, 400, 180, 30,
 'Penguin', 4.90, '2021-01-20', FALSE),

('Rich Dad Poor Dad', 13, 12, 600, 350, 170, 30,
 'Plata', 4.60, '2019-03-18', FALSE),

('Think and Grow Rich', 13, 12, 500, 300, 160, 30,
 'Fingerprint', 4.50, '2018-07-22', FALSE),

('Yoga Mat', 15, 10, 1200, 700, 100, 20,
 'Boldfit', 4.40, '2022-02-15', FALSE),

('Dumbbell Set', 15, 11, 5000, 3500, 55, 10,
 'FitLife', 4.60, '2021-06-20', FALSE),

('Treadmill', 15, 11, 45000, 35000, 18, 5,
 'FitLife', 4.70, '2020-10-15', FALSE),

('Football', 16, 10, 1800, 1000, 75, 15,
 'Nivia', 4.50, '2022-03-20', FALSE),

('Cricket Bat', 16, 10, 6000, 4200, 45, 10,
 'SS', 4.70, '2021-05-15', FALSE),

('Badminton Racket', 16, 10, 3000, 2000, 60, 12,
 'Yonex', 4.80, '2022-07-18', FALSE),

('Old Laptop Model', 2, 1, 45000, 38000, 0, 10,
 'Dell', 3.50, '2018-01-10', TRUE),

('Old Smartphone', 3, 3, 25000, 22000, 0, 10,
 'Samsung', 3.20, '2018-05-10', TRUE);


/*
============================================================
6. CUSTOMERS
============================================================

60 customers.

Some customers will have no orders.

This is important for LEFT JOIN practice.
============================================================
*/

INSERT INTO customers
    (
        first_name,
        last_name,
        email,
        phone,
        city,
        state,
        country,
        signup_date,
        customer_type,
        credit_limit,
        referred_by
    )
VALUES

('Aarav','Reddy','aarav.reddy1@gmail.com','9876510001',
 'Hyderabad','Telangana','India','2020-01-15','Regular',70000,NULL),

('Ananya','Sharma','ananya.sharma2@gmail.com','9876510002',
 'Bangalore','Karnataka','India','2021-02-20','Premium',150000,1),

('Rahul','Kumar','rahul.kumar3@gmail.com','9876510003',
 'Chennai','Tamil Nadu','India','2022-03-12','Regular',85000,1),

('Sneha','Patel','sneha.patel4@gmail.com','9876510004',
 'Mumbai','Maharashtra','India','2023-04-18','Premium',180000,2),

('Vikram','Singh','vikram.singh5@gmail.com','9876510005',
 'Delhi','Delhi','India','2020-05-22','Regular',100000,2),

('Priya','Nair','priya.nair6@gmail.com','9876510006',
 'Pune','Maharashtra','India','2021-06-25','Regular',125000,3),

('Rohan','Gupta','rohan.gupta7@gmail.com','9876510007',
 'Kochi','Kerala','India','2022-07-14','Premium',200000,3),

('Divya','Rao','divya.rao8@gmail.com','9876510008',
 'Jaipur','Rajasthan','India','2023-08-19','Regular',70000,4),

('Karan','Mehta','karan.mehta9@gmail.com','9876510009',
 'Kolkata','West Bengal','India','2020-09-21','Premium',150000,4),

('Pooja','Shah','pooja.shah10@gmail.com','9876510010',
 'Lucknow','Uttar Pradesh','India','2021-10-11','Regular',85000,5),

('Amit','Verma','amit.verma11@gmail.com','9876510011',
 'Ahmedabad','Gujarat','India','2022-11-15','Regular',100000,5),

('Neha','Joshi','neha.joshi12@gmail.com','9876510012',
 'Hyderabad','Telangana','India','2023-12-05','Premium',180000,6),

('Suresh','Babu','suresh.babu13@gmail.com','9876510013',
 'Bangalore','Karnataka','India','2020-01-17','Regular',70000,6),

('Kavya','Yadav','kavya.yadav14@gmail.com','9876510014',
 'Chennai','Tamil Nadu','India','2021-02-19','Premium',150000,7),

('Manish','Mishra','manish.mishra15@gmail.com','9876510015',
 'Mumbai','Maharashtra','India','2022-03-21','Regular',125000,7),

('Swati','Jain','swati.jain16@gmail.com','9876510016',
 'Delhi','Delhi','India','2023-04-23','Regular',85000,8),

('Rakesh','Khan','rakesh.khan17@gmail.com','9876510017',
 'Pune','Maharashtra','India','2020-05-25','Premium',200000,8),

('Ayesha','Sen','ayesha.sen18@gmail.com','9876510018',
 'Kochi','Kerala','India','2021-06-27','Regular',100000,9),

('Deepak','Agarwal','deepak.agarwal19@gmail.com','9876510019',
 'Jaipur','Rajasthan','India','2022-07-29','Regular',70000,9),

('Nandini','Kapoor','nandini.kapoor20@gmail.com','9876510020',
 'Kolkata','West Bengal','India','2023-08-31','Premium',180000,10),

('Harsh','Reddy','harsh.reddy21@gmail.com','9876510021',
 'Lucknow','Uttar Pradesh','India','2020-09-10','Regular',125000,10),

('Riya','Sharma','riya.sharma22@gmail.com','9876510022',
 'Ahmedabad','Gujarat','India','2021-10-12','Premium',150000,11),

('Aman','Kumar','aman.kumar23@gmail.com','9876510023',
 'Hyderabad','Telangana','India','2022-11-14','Regular',85000,11),

('Shreya','Patel','shreya.patel24@gmail.com','9876510024',
 'Bangalore','Karnataka','India','2023-12-16','Regular',100000,12),

('Mohit','Singh','mohit.singh25@gmail.com','9876510025',
 'Chennai','Tamil Nadu','India','2020-01-18','Premium',200000,12),

('Tanvi','Nair','tanvi.nair26@gmail.com','9876510026',
 'Mumbai','Maharashtra','India','2021-02-20','Regular',70000,13),

('Aditya','Gupta','aditya.gupta27@gmail.com','9876510027',
 'Delhi','Delhi','India','2022-03-22','Premium',180000,13),

('Komal','Rao','komal.rao28@gmail.com','9876510028',
 'Pune','Maharashtra','India','2023-04-24','Regular',125000,14),

('Abhishek','Mehta','abhishek.mehta29@gmail.com','9876510029',
 'Kochi','Kerala','India','2020-05-26','Regular',85000,14),

('Lakshmi','Shah','lakshmi.shah30@gmail.com','9876510030',
 'Jaipur','Rajasthan','India','2021-06-28','Premium',150000,15),

('Varun','Verma','varun.verma31@gmail.com','9876510031',
 'Kolkata','West Bengal','India','2022-07-30','Regular',100000,15),

('Isha','Joshi','isha.joshi32@gmail.com','9876510032',
 'Lucknow','Uttar Pradesh','India','2023-08-10','Premium',200000,16),

('Gaurav','Babu','gaurav.babu33@gmail.com','9876510033',
 'Ahmedabad','Gujarat','India','2020-09-12','Regular',70000,16),

('Meera','Yadav','meera.yadav34@gmail.com','9876510034',
 'Hyderabad','Telangana','India','2021-10-14','Regular',125000,17),

('Sanjay','Mishra','sanjay.mishra35@gmail.com','9876510035',
 'Bangalore','Karnataka','India','2022-11-16','Premium',180000,17),

('Harini','Jain','harini.jain36@gmail.com','9876510036',
 'Chennai','Tamil Nadu','India','2023-12-18','Regular',85000,18),

('Yash','Khan','yash.khan37@gmail.com','9876510037',
 'Mumbai','Maharashtra','India','2020-01-20','Premium',150000,18),

('Sonia','Sen','sonia.sen38@gmail.com','9876510038',
 'Delhi','Delhi','India','2021-02-22','Regular',100000,19),

('Arjun','Agarwal','arjun.agarwal39@gmail.com','9876510039',
 'Pune','Maharashtra','India','2022-03-24','Regular',70000,19),

('Maya','Kapoor','maya.kapoor40@gmail.com','9876510040',
 'Kochi','Kerala','India','2023-04-26','Premium',200000,20),

('Aarav','Sharma','aarav.sharma41@gmail.com','9876510041',
 'Jaipur','Rajasthan','India','2020-05-28','Regular',125000,20),

('Ananya','Kumar','ananya.kumar42@gmail.com','9876510042',
 'Kolkata','West Bengal','India','2021-06-30','Premium',180000,21),

('Rahul','Patel','rahul.patel43@gmail.com','9876510043',
 'Lucknow','Uttar Pradesh','India','2022-07-10','Regular',85000,21),

('Sneha','Singh','sneha.singh44@gmail.com','9876510044',
 'Ahmedabad','Gujarat','India','2023-08-12','Regular',100000,22),

('Vikram','Nair','vikram.nair45@gmail.com','9876510045',
 'Hyderabad','Telangana','India','2020-09-14','Premium',150000,22),

('Priya','Gupta','priya.gupta46@gmail.com','9876510046',
 'Bangalore','Karnataka','India','2021-10-16','Regular',70000,23),

('Rohan','Rao','rohan.rao47@gmail.com','9876510047',
 'Chennai','Tamil Nadu','India','2022-11-18','Premium',200000,23),

('Divya','Mehta','divya.mehta48@gmail.com','9876510048',
 'Mumbai','Maharashtra','India','2023-12-20','Regular',125000,24),

('Karan','Shah','karan.shah49@gmail.com','9876510049',
 'Delhi','Delhi','India','2020-01-22','Regular',85000,24),

('Pooja','Verma','pooja.verma50@gmail.com','9876510050',
 'Pune','Maharashtra','India','2021-02-24','Premium',180000,25),

('Aarav','Joshi','aarav.joshi51@gmail.com','9876510051',
 'Kochi','Kerala','India','2022-03-26','Regular',100000,25),

('Ananya','Babu','ananya.babu52@gmail.com','9876510052',
 'Jaipur','Rajasthan','India','2023-04-28','Premium',150000,26),

('Rahul','Yadav','rahul.yadav53@gmail.com','9876510053',
 'Kolkata','West Bengal','India','2020-05-30','Regular',70000,26),

('Sneha','Mishra','sneha.mishra54@gmail.com','9876510054',
 'Lucknow','Uttar Pradesh','India','2021-06-12','Regular',125000,27),

('Vikram','Jain','vikram.jain55@gmail.com','9876510055',
 'Ahmedabad','Gujarat','India','2022-07-14','Premium',200000,27),

('Priya','Khan','priya.khan56@gmail.com','9876510056',
 'Hyderabad','Telangana','India','2023-08-16','Regular',85000,28),

('Rohan','Sen','rohan.sen57@gmail.com','9876510057',
 'Bangalore','Karnataka','India','2020-09-18','Premium',150000,28),

('Divya','Agarwal','divya.agarwal58@gmail.com','9876510058',
 'Chennai','Tamil Nadu','India','2021-10-20','Regular',100000,29),

('Karan','Kapoor','karan.kapoor59@gmail.com','9876510059',
 'Mumbai','Maharashtra','India','2022-11-22','Regular',70000,29),

('Pooja','Rao','pooja.rao60@gmail.com','9876510060',
 'Delhi','Delhi','India','2023-12-24','Premium',180000,30);


/*
============================================================
7. ORDERS
============================================================

180 orders.

Multiple orders per customer are intentional.

Statuses:
    Completed
    Pending
    Cancelled
============================================================
*/

INSERT INTO orders
    (
        customer_id,
        employee_id,
        order_date,
        status,
        shipping_city,
        shipping_state,
        total_amount,
        discount_amount,
        tax_amount,
        payment_method
    )
VALUES

(1,11,'2023-01-10 10:15:00','Completed','Hyderabad','Telangana',72800,2000,7800,'UPI'),
(2,12,'2023-01-18 11:20:00','Completed','Bangalore','Karnataka',80640,3360,8640,'Credit Card'),
(3,13,'2023-01-25 14:10:00','Pending','Chennai','Tamil Nadu',61600,2000,6600,'Debit Card'),
(4,14,'2023-02-03 09:45:00','Completed','Mumbai','Maharashtra',84000,5000,9000,'UPI'),
(5,15,'2023-02-11 16:20:00','Completed','Delhi','Delhi',67200,2800,7200,'Credit Card'),
(6,16,'2023-02-20 12:30:00','Cancelled','Pune','Maharashtra',44800,3200,4800,'UPI'),
(7,17,'2023-03-02 13:45:00','Completed','Kochi','Kerala',56000,4000,6000,'Debit Card'),
(8,18,'2023-03-12 15:10:00','Completed','Jaipur','Rajasthan',78400,3600,8400,'Credit Card'),
(9,19,'2023-03-21 10:05:00','Pending','Kolkata','West Bengal',33600,2400,3600,'UPI'),
(10,20,'2023-04-01 17:20:00','Completed','Lucknow','Uttar Pradesh',67200,2800,7200,'Debit Card'),

(11,21,'2023-04-09 11:15:00','Completed','Ahmedabad','Gujarat',72800,3200,7800,'Credit Card'),
(12,22,'2023-04-18 14:40:00','Completed','Hyderabad','Telangana',61600,3400,6600,'UPI'),
(13,23,'2023-04-26 09:20:00','Cancelled','Bangalore','Karnataka',33600,2400,3600,'Debit Card'),
(14,24,'2023-05-05 13:10:00','Completed','Chennai','Tamil Nadu',84000,5000,9000,'Credit Card'),
(15,25,'2023-05-15 16:30:00','Completed','Mumbai','Maharashtra',96000,6000,10200,'UPI'),
(16,26,'2023-05-24 10:50:00','Pending','Delhi','Delhi',56000,4000,6000,'Debit Card'),
(17,27,'2023-06-02 12:15:00','Completed','Pune','Maharashtra',44800,3200,4800,'Credit Card'),
(18,28,'2023-06-12 15:25:00','Completed','Kochi','Kerala',72000,4000,8000,'UPI'),
(19,29,'2023-06-21 11:45:00','Completed','Jaipur','Rajasthan',60000,5000,6500,'Debit Card'),
(20,30,'2023-07-01 14:20:00','Cancelled','Kolkata','West Bengal',40000,3000,4300,'Credit Card'),

(21,31,'2023-07-10 09:30:00','Completed','Lucknow','Uttar Pradesh',80000,5000,8500,'UPI'),
(22,32,'2023-07-18 16:10:00','Completed','Ahmedabad','Gujarat',64000,4000,6800,'Debit Card'),
(23,33,'2023-07-27 10:40:00','Pending','Hyderabad','Telangana',72000,3000,7800,'Credit Card'),
(24,34,'2023-08-05 13:35:00','Completed','Bangalore','Karnataka',54000,3000,5850,'UPI'),
(25,35,'2023-08-15 15:50:00','Completed','Chennai','Tamil Nadu',90000,6000,9600,'Debit Card'),
(26,36,'2023-08-24 11:20:00','Completed','Mumbai','Maharashtra',48000,3000,5200,'Credit Card'),
(27,37,'2023-09-02 14:15:00','Cancelled','Delhi','Delhi',60000,4000,6500,'UPI'),
(28,38,'2023-09-12 10:25:00','Completed','Pune','Maharashtra',72000,5000,7800,'Debit Card'),
(29,39,'2023-09-21 16:40:00','Completed','Kochi','Kerala',84000,4000,9000,'Credit Card'),
(30,40,'2023-10-01 12:10:00','Pending','Jaipur','Rajasthan',56000,3500,6000,'UPI'),

(31,41,'2023-10-10 09:15:00','Completed','Kolkata','West Bengal',90000,5000,9600,'Debit Card'),
(32,42,'2023-10-18 14:20:00','Completed','Lucknow','Uttar Pradesh',72000,4000,7800,'Credit Card'),
(33,43,'2023-10-27 11:30:00','Completed','Ahmedabad','Gujarat',64000,3500,6800,'UPI'),
(34,44,'2023-11-05 15:15:00','Cancelled','Hyderabad','Telangana',48000,3000,5200,'Debit Card'),
(35,45,'2023-11-15 10:45:00','Completed','Bangalore','Karnataka',84000,5000,9000,'Credit Card'),
(36,46,'2023-11-24 13:20:00','Completed','Chennai','Tamil Nadu',56000,3000,6000,'UPI'),
(37,47,'2023-12-02 16:10:00','Pending','Mumbai','Maharashtra',76000,4000,8200,'Debit Card'),
(38,48,'2023-12-12 11:25:00','Completed','Delhi','Delhi',92000,6000,9800,'Credit Card'),
(39,49,'2023-12-21 14:50:00','Completed','Pune','Maharashtra',68000,3500,7300,'UPI'),
(40,50,'2024-01-05 09:40:00','Completed','Kochi','Kerala',80000,5000,8500,'Debit Card'),

(41,11,'2024-01-15 10:15:00','Completed','Jaipur','Rajasthan',72000,4000,7800,'Credit Card'),
(42,12,'2024-01-24 13:30:00','Pending','Kolkata','West Bengal',60000,3000,6500,'UPI'),
(43,13,'2024-02-02 15:20:00','Completed','Lucknow','Uttar Pradesh',84000,5000,9000,'Debit Card'),
(44,14,'2024-02-12 11:10:00','Completed','Ahmedabad','Gujarat',68000,3500,7300,'Credit Card'),
(45,15,'2024-02-21 16:35:00','Cancelled','Hyderabad','Telangana',48000,2500,5200,'UPI'),
(46,16,'2024-03-02 09:50:00','Completed','Bangalore','Karnataka',96000,7000,10300,'Debit Card'),
(47,17,'2024-03-12 14:15:00','Completed','Chennai','Tamil Nadu',72000,4000,7800,'Credit Card'),
(48,18,'2024-03-21 10:30:00','Pending','Mumbai','Maharashtra',64000,3500,6800,'UPI'),
(49,19,'2024-04-01 12:45:00','Completed','Delhi','Delhi',80000,5000,8500,'Debit Card'),
(50,20,'2024-04-10 15:20:00','Completed','Pune','Maharashtra',90000,6000,9600,'Credit Card'),

(51,21,'2024-04-18 11:40:00','Completed','Kochi','Kerala',56000,3000,6000,'UPI'),
(52,22,'2024-04-27 09:25:00','Pending','Jaipur','Rajasthan',68000,3500,7300,'Debit Card'),
(53,23,'2024-05-05 14:10:00','Completed','Kolkata','West Bengal',84000,5000,9000,'Credit Card'),
(54,24,'2024-05-15 16:20:00','Completed','Lucknow','Uttar Pradesh',72000,4000,7800,'UPI'),
(55,25,'2024-05-24 10:35:00','Cancelled','Ahmedabad','Gujarat',48000,3000,5200,'Debit Card'),
(56,26,'2024-06-02 13:50:00','Completed','Hyderabad','Telangana',80000,5000,8500,'Credit Card'),
(57,27,'2024-06-12 15:15:00','Completed','Bangalore','Karnataka',96000,6000,10200,'UPI'),
(58,28,'2024-06-21 11:30:00','Pending','Chennai','Tamil Nadu',60000,3500,6500,'Debit Card'),
(59,29,'2024-07-01 09:45:00','Completed','Mumbai','Maharashtra',72000,4000,7800,'Credit Card'),
(60,30,'2024-07-10 14:25:00','Completed','Delhi','Delhi',88000,5500,9400,'UPI'),

(1,31,'2024-07-18 16:10:00','Completed','Hyderabad','Telangana',64000,3000,6800,'Debit Card'),
(2,32,'2024-07-27 10:20:00','Pending','Bangalore','Karnataka',76000,4000,8200,'Credit Card'),
(3,33,'2024-08-05 12:40:00','Completed','Chennai','Tamil Nadu',90000,5000,9600,'UPI'),
(4,34,'2024-08-15 15:35:00','Completed','Mumbai','Maharashtra',72000,4500,7800,'Debit Card'),
(5,35,'2024-08-24 11:15:00','Cancelled','Delhi','Delhi',52000,3000,5600,'Credit Card'),
(6,36,'2024-09-02 09:30:00','Completed','Pune','Maharashtra',68000,3500,7300,'UPI'),
(7,37,'2024-09-12 14:45:00','Completed','Kochi','Kerala',84000,5000,9000,'Debit Card'),
(8,38,'2024-09-21 16:20:00','Pending','Jaipur','Rajasthan',60000,3000,6500,'Credit Card'),
(9,39,'2024-10-01 10:10:00','Completed','Kolkata','West Bengal',92000,6000,9800,'UPI'),
(10,40,'2024-10-10 13:30:00','Completed','Lucknow','Uttar Pradesh',76000,4500,8200,'Debit Card'),

(11,41,'2024-10-18 15:40:00','Completed','Ahmedabad','Gujarat',68000,3500,7300,'Credit Card'),
(12,42,'2024-10-27 09:20:00','Pending','Hyderabad','Telangana',84000,5000,9000,'UPI'),
(13,43,'2024-11-05 11:50:00','Cancelled','Bangalore','Karnataka',48000,2500,5200,'Debit Card'),
(14,44,'2024-11-15 14:15:00','Completed','Chennai','Tamil Nadu',72000,4000,7800,'Credit Card'),
(15,45,'2024-11-24 16:35:00','Completed','Mumbai','Maharashtra',96000,6500,10200,'UPI'),
(16,46,'2024-12-02 10:25:00','Completed','Delhi','Delhi',64000,3500,6800,'Debit Card'),
(17,47,'2024-12-12 13:45:00','Pending','Pune','Maharashtra',56000,3000,6000,'Credit Card'),
(18,48,'2024-12-21 15:10:00','Completed','Kochi','Kerala',80000,4500,8500,'UPI'),
(19,49,'2025-01-05 09:35:00','Completed','Jaipur','Rajasthan',72000,4000,7800,'Debit Card'),
(20,50,'2025-01-15 12:20:00','Cancelled','Kolkata','West Bengal',52000,3000,5600,'Credit Card'),

(21,11,'2025-01-24 14:50:00','Completed','Lucknow','Uttar Pradesh',90000,5000,9600,'UPI'),
(22,12,'2025-02-02 16:15:00','Completed','Ahmedabad','Gujarat',68000,3500,7300,'Debit Card'),
(23,13,'2025-02-12 10:40:00','Pending','Hyderabad','Telangana',76000,4000,8200,'Credit Card'),
(24,14,'2025-02-21 13:25:00','Completed','Bangalore','Karnataka',84000,5000,9000,'UPI'),
(25,15,'2025-03-02 15:45:00','Completed','Chennai','Tamil Nadu',72000,4000,7800,'Debit Card'),
(26,16,'2025-03-12 09:55:00','Cancelled','Mumbai','Maharashtra',48000,2500,5200,'Credit Card'),
(27,17,'2025-03-21 11:30:00','Completed','Delhi','Delhi',96000,6000,10200,'UPI'),
(28,18,'2025-04-01 14:10:00','Completed','Pune','Maharashtra',64000,3500,6800,'Debit Card'),
(29,19,'2025-04-10 16:25:00','Pending','Kochi','Kerala',80000,4500,8500,'Credit Card'),
(30,20,'2025-04-18 10:15:00','Completed','Jaipur','Rajasthan',72000,4000,7800,'UPI'),

(31,21,'2025-04-27 13:40:00','Completed','Kolkata','West Bengal',88000,5000,9400,'Debit Card'),
(32,22,'2025-05-05 15:20:00','Cancelled','Lucknow','Uttar Pradesh',52000,3000,5600,'Credit Card'),
(33,23,'2025-05-15 09:30:00','Completed','Ahmedabad','Gujarat',76000,4000,8200,'UPI'),
(34,24,'2025-05-24 12:45:00','Pending','Hyderabad','Telangana',60000,3500,6500,'Debit Card'),
(35,25,'2025-06-02 14:35:00','Completed','Bangalore','Karnataka',92000,5500,9800,'Credit Card'),
(36,26,'2025-06-12 16:10:00','Completed','Chennai','Tamil Nadu',68000,3500,7300,'UPI'),
(37,27,'2025-06-21 10:20:00','Completed','Mumbai','Maharashtra',84000,5000,9000,'Debit Card'),
(38,28,'2025-07-01 13:15:00','Pending','Delhi','Delhi',72000,4000,7800,'Credit Card'),
(39,29,'2025-07-10 15:45:00','Completed','Pune','Maharashtra',96000,6000,10200,'UPI'),
(40,30,'2025-07-18 09:50:00','Cancelled','Kochi','Kerala',48000,2500,5200,'Debit Card'),

(41,31,'2025-07-27 11:30:00','Completed','Jaipur','Rajasthan',80000,4500,8500,'Credit Card'),
(42,32,'2025-08-05 14:20:00','Completed','Kolkata','West Bengal',68000,3500,7300,'UPI'),
(43,33,'2025-08-15 16:35:00','Pending','Lucknow','Uttar Pradesh',76000,4000,8200,'Debit Card'),
(44,34,'2025-08-24 10:15:00','Completed','Ahmedabad','Gujarat',84000,5000,9000,'Credit Card'),
(45,35,'2025-09-02 13:40:00','Completed','Hyderabad','Telangana',72000,4000,7800,'UPI'),
(46,36,'2025-09-12 15:25:00','Cancelled','Bangalore','Karnataka',52000,3000,5600,'Debit Card'),
(47,37,'2025-09-21 09:45:00','Completed','Chennai','Tamil Nadu',90000,5500,9600,'Credit Card'),
(48,38,'2025-10-01 12:10:00','Completed','Mumbai','Maharashtra',64000,3500,6800,'UPI'),
(49,39,'2025-10-10 14:30:00','Pending','Delhi','Delhi',80000,4500,8500,'Debit Card'),
(50,40,'2025-10-18 16:20:00','Completed','Pune','Maharashtra',92000,6000,9800,'Credit Card'),

(51,41,'2025-10-27 10:15:00','Completed','Kochi','Kerala',68000,3500,7300,'UPI'),
(52,42,'2025-11-05 13:45:00','Pending','Jaipur','Rajasthan',76000,4000,8200,'Debit Card'),
(53,43,'2025-11-15 15:30:00','Completed','Kolkata','West Bengal',84000,5000,9000,'Credit Card'),
(54,44,'2025-11-24 09:20:00','Cancelled','Lucknow','Uttar Pradesh',48000,2500,5200,'UPI'),
(55,45,'2025-12-02 12:35:00','Completed','Ahmedabad','Gujarat',96000,6000,10200,'Debit Card'),
(56,46,'2025-12-12 14:15:00','Completed','Hyderabad','Telangana',72000,4000,7800,'Credit Card'),
(57,47,'2025-12-21 16:45:00','Pending','Bangalore','Karnataka',60000,3500,6500,'UPI'),
(58,48,'2026-01-05 10:10:00','Completed','Chennai','Tamil Nadu',88000,5000,9400,'Debit Card'),
(59,49,'2026-01-15 13:25:00','Completed','Mumbai','Maharashtra',76000,4000,8200,'Credit Card'),
(60,50,'2026-01-24 15:40:00','Cancelled','Delhi','Delhi',52000,3000,5600,'UPI'),

(1,11,'2026-02-02 09:30:00','Completed','Hyderabad','Telangana',90000,5500,9600,'Debit Card'),
(2,12,'2026-02-12 11:15:00','Pending','Bangalore','Karnataka',68000,3500,7300,'Credit Card'),
(3,13,'2026-02-21 14:20:00','Completed','Chennai','Tamil Nadu',84000,5000,9000,'UPI'),
(4,14,'2026-03-02 16:35:00','Completed','Mumbai','Maharashtra',72000,4000,7800,'Debit Card'),
(5,15,'2026-03-12 10:25:00','Cancelled','Delhi','Delhi',48000,2500,5200,'Credit Card'),
(6,16,'2026-03-21 13:40:00','Completed','Pune','Maharashtra',96000,6000,10200,'UPI'),
(7,17,'2026-04-01 15:10:00','Completed','Kochi','Kerala',64000,3500,6800,'Debit Card'),
(8,18,'2026-04-10 09:45:00','Pending','Jaipur','Rajasthan',80000,4500,8500,'Credit Card'),
(9,19,'2026-04-18 12:20:00','Completed','Kolkata','West Bengal',92000,5500,9800,'UPI'),
(10,20,'2026-04-27 14:50:00','Completed','Lucknow','Uttar Pradesh',76000,4000,8200,'Debit Card'),

(11,21,'2026-05-05 16:15:00','Completed','Ahmedabad','Gujarat',68000,3500,7300,'Credit Card'),
(12,22,'2026-05-15 10:30:00','Pending','Hyderabad','Telangana',84000,5000,9000,'UPI'),
(13,23,'2026-05-24 13:45:00','Cancelled','Bangalore','Karnataka',52000,3000,5600,'Debit Card'),
(14,24,'2026-06-02 15:20:00','Completed','Chennai','Tamil Nadu',90000,5500,9600,'Credit Card'),
(15,25,'2026-06-12 09:35:00','Completed','Mumbai','Maharashtra',72000,4000,7800,'UPI'),
(16,26,'2026-06-21 11:50:00','Completed','Delhi','Delhi',64000,3500,6800,'Debit Card'),
(17,27,'2026-07-01 14:15:00','Pending','Pune','Maharashtra',80000,4500,8500,'Credit Card'),
(18,28,'2026-07-10 16:30:00','Completed','Kochi','Kerala',96000,6000,10200,'UPI'),
(19,29,'2026-07-18 10:10:00','Completed','Jaipur','Rajasthan',68000,3500,7300,'Debit Card'),
(20,30,'2026-07-27 13:25:00','Cancelled','Kolkata','West Bengal',48000,2500,5200,'Credit Card'),

(21,31,'2026-08-05 15:40:00','Completed','Lucknow','Uttar Pradesh',84000,5000,9000,'UPI'),
(22,32,'2026-08-15 09:20:00','Pending','Ahmedabad','Gujarat',72000,4000,7800,'Debit Card'),
(23,33,'2026-08-24 12:35:00','Completed','Hyderabad','Telangana',92000,5500,9800,'Credit Card'),
(24,34,'2026-09-02 14:50:00','Completed','Bangalore','Karnataka',76000,4500,8200,'UPI'),
(25,35,'2026-09-12 16:15:00','Cancelled','Chennai','Tamil Nadu',52000,3000,5600,'Debit Card'),
(26,36,'2026-09-21 10:30:00','Completed','Mumbai','Maharashtra',88000,5000,9400,'Credit Card'),
(27,37,'2026-09-22 13:45:00','Completed','Delhi','Delhi',72000,4000,7800,'UPI'),
(28,38,'2026-09-22 15:20:00','Pending','Pune','Maharashtra',60000,3500,6500,'Debit Card'),
(29,39,'2026-09-22 16:40:00','Completed','Kochi','Kerala',96000,6000,10200,'Credit Card'),
(30,40,'2026-09-22 17:10:00','Completed','Jaipur','Rajasthan',68000,3500,7300,'UPI'),

(31,41,'2026-09-22 09:15:00','Completed','Kolkata','West Bengal',84000,5000,9000,'Debit Card'),
(32,42,'2026-09-22 10:45:00','Pending','Lucknow','Uttar Pradesh',76000,4000,8200,'Credit Card'),
(33,43,'2026-09-22 12:20:00','Completed','Ahmedabad','Gujarat',90000,5500,9600,'UPI'),
(34,44,'2026-09-22 13:50:00','Cancelled','Hyderabad','Telangana',48000,2500,5200,'Debit Card'),
(35,45,'2026-09-22 14:30:00','Completed','Bangalore','Karnataka',72000,4000,7800,'Credit Card'),
(36,46,'2026-09-22 15:15:00','Completed','Chennai','Tamil Nadu',64000,3500,6800,'UPI'),
(37,47,'2026-09-22 16:00:00','Pending','Mumbai','Maharashtra',80000,4500,8500,'Debit Card'),
(38,48,'2026-09-22 16:30:00','Completed','Delhi','Delhi',92000,5500,9800,'Credit Card'),
(39,49,'2026-09-22 17:00:00','Completed','Pune','Maharashtra',68000,3500,7300,'UPI'),
(40,50,'2026-09-22 17:30:00','Cancelled','Kochi','Kerala',52000,3000,5600,'Debit Card');


/*
============================================================
8. ORDER ITEMS
============================================================

Two products per order.

180 orders x 2 items = 360 rows.

This table is extremely important for JOIN practice.
============================================================
*/

INSERT INTO order_items
    (
        order_id,
        product_id,
        quantity,
        unit_price,
        discount_percent
    )
SELECT
    order_id,
    ((order_id * 5) % 35) + 1,
    (order_id % 4) + 1,
    p.price,
    CASE
        WHEN order_id % 4 = 0 THEN 0
        WHEN order_id % 4 = 1 THEN 5
        WHEN order_id % 4 = 2 THEN 10
        ELSE 15
    END
FROM orders o
JOIN products p
    ON p.product_id = ((o.order_id * 5) % 35) + 1

UNION ALL

SELECT
    order_id,
    ((order_id * 9 + 3) % 35) + 1,
    ((order_id + 1) % 4) + 1,
    p.price,
    CASE
        WHEN order_id % 4 = 0 THEN 5
        WHEN order_id % 4 = 1 THEN 10
        WHEN order_id % 4 = 2 THEN 15
        ELSE 0
    END
FROM orders o
JOIN products p
    ON p.product_id = ((o.order_id * 9 + 3) % 35) + 1;


/*
============================================================
9. PAYMENTS
============================================================

Some orders intentionally have NO payment.

Orders where:

    order_id % 13 = 0

do not get a payment.

This is useful for LEFT JOIN questions.

Some payments are also Failed.
============================================================
*/

INSERT INTO payments
    (
        order_id,
        payment_date,
        amount,
        payment_method,
        payment_status,
        transaction_id
    )
SELECT
    o.order_id,
    o.order_date + INTERVAL '1 day',
    o.total_amount,
    o.payment_method,

    CASE
        WHEN o.order_id % 11 = 0 THEN 'Failed'
        WHEN o.status = 'Completed' THEN 'Paid'
        ELSE 'Pending'
    END,

    'TXN' || LPAD(o.order_id::TEXT, 5, '0')

FROM orders o
WHERE o.order_id % 13 <> 0;


/*
============================================================
10. SHIPMENTS
============================================================

Some orders intentionally have NO shipment.

Orders where:

    order_id % 9 = 0

do not get a shipment.

Some shipments are still In Transit.
============================================================
*/

INSERT INTO shipments
    (
        order_id,
        shipped_date,
        delivered_date,
        courier,
        shipping_cost,
        shipment_status
    )
SELECT
    o.order_id,

    o.order_date::DATE + 1,

    CASE
        WHEN o.order_id % 10 = 0
        THEN NULL
        ELSE
            o.order_date::DATE
            + 1
            + (2 + (o.order_id % 5))
    END,

    CASE
        WHEN o.order_id % 5 = 0 THEN 'Ecom Express'
        WHEN o.order_id % 5 = 1 THEN 'Delhivery'
        WHEN o.order_id % 5 = 2 THEN 'BlueDart'
        WHEN o.order_id % 5 = 3 THEN 'DTDC'
        ELSE 'FedEx'
    END,

    250 + ((o.order_id % 6) * 50),

    CASE
        WHEN o.order_id % 10 = 0
        THEN 'In Transit'
        ELSE 'Delivered'
    END

FROM orders o
WHERE o.order_id % 9 <> 0;


/*
============================================================
11. VERIFICATION
============================================================

Run this after all INSERT statements.

Expected approximate counts:

departments   -> 10
employees     -> 50
customers     -> 60
categories    -> 16
suppliers     -> 12
products      -> 35
orders        -> 180
order_items   -> 360
payments      -> 166
shipments     -> 160
============================================================
*/

SELECT
    'departments' AS table_name,
    COUNT(*) AS row_count
FROM departments

UNION ALL

SELECT
    'employees',
    COUNT(*)
FROM employees

UNION ALL

SELECT
    'customers',
    COUNT(*)
FROM customers

UNION ALL

SELECT
    'categories',
    COUNT(*)
FROM categories

UNION ALL

SELECT
    'suppliers',
    COUNT(*)
FROM suppliers

UNION ALL

SELECT
    'products',
    COUNT(*)
FROM products

UNION ALL

SELECT
    'orders',
    COUNT(*)
FROM orders

UNION ALL

SELECT
    'order_items',
    COUNT(*)
FROM order_items

UNION ALL

SELECT
    'payments',
    COUNT(*)
FROM payments

UNION ALL

SELECT
    'shipments',
    COUNT(*)
FROM shipments

ORDER BY table_name;