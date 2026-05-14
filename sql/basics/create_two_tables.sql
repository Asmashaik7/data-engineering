-- practiced here, where,in, between, like,and ,or operators
-- =========================================
-- SIMPLE DATABASE DEMO
-- PostgreSQL // SQLite Compatible
-- =========================================


-- =========================================
-- TABLE 1 : students
-- =========================================
use SphoorthiDB
CREATE TABLE students (
    id INTEGER,
    name TEXT,
    age INTEGER,
    city TEXT,
    course TEXT,
    grade TEXT
);

select * from students
-- =========================================
-- TABLE 2 : products
-- =========================================

CREATE TABLE products (
    product_id INTEGER,
    product_name TEXT,
    category TEXT,
    price REAL,
    stock INTEGER,
    review TEXT
);

select * from products
-- =========================================
-- INSERT DATA INTO students
-- =========================================

INSERT INTO students VALUES
(1, 'Ravi', 20, 'Hyderabad', 'SQL', 'Pass'),

(2, 'Sneha', 22, 'Bangalore', 'Python', 'Promoted'),

(3, 'Arjun', 21, 'Chennai', 'SQL', 'Failed'),

(4, 'Priya', 23, 'Mumbai', 'Power BI', 'Pass'),

(5, 'Kiran', 20, 'Pune', 'Python', 'Promoted');


-- =========================================
-- INSERT DATA INTO products
-- =========================================

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 75000, 10, 'Good'),

(102, 'Mouse', 'Electronics', 500, 50, 'Good'),

(103, 'Chair', 'Furniture', 3500, 15, 'Bad'),

(104, 'Bottle', 'Accessories', 250, 100, 'Good'),

(105, 'Phone', 'Electronics', 45000, 20, 'Bad');

-- =========================================
-- =========================================
-- =========================================

-- Practice:14-05-2026

-- Select all columns from students table
select * from students

-- Select only name and city from students table
select name,city from students

-- Select all products with price greater than 5000
select * from products where price >5000

-- Select all products in the Electronics category
select * from products where category='Electronics'

--ERROR
-- Msg 402, Level 16, State 1, Line 83
--The data types text and varchar are incompatible in the equal to operator.

--I need to convert the DTs as im trying to run psotgre in ssms.
-- by using alter command i will alter all DT to varchar
--we can add new columns in alter table at a time using a comma as a separator.
-- but we cant alter an existing column using a comma, we need to write individually alter commands for each column.

--students table altering Data types
ALTER TABLE students
ALTER COLUMN name VARCHAR(100);

ALTER TABLE students
ALTER COLUMN city VARCHAR(100);

ALTER TABLE students
ALTER COLUMN course VARCHAR(100);

ALTER TABLE students
ALTER COLUMN grade VARCHAR(50);
 
select * from students

--product table altering Data types

ALTER TABLE products
ALTER COLUMN product_name VARCHAR(100);

ALTER TABLE products
ALTER COLUMN category VARCHAR(100);

ALTER TABLE products
ALTER COLUMN review VARCHAR(50);

select * from products;

--Now i try to run the sql query where i got the DT error
-- Select all products in the Electronics category
select * from products where category='Electronics'

-- Select all students who passed the SQL course
select * from students where course='SQL' and grade='Pass'

-- Select all students who are from Hyderabad
select * from students where city='Hyderabad'

-- Select all products with stock less than 20
select * from products where stock<20

-- Select all students who are promoted in Python course
select * from students
where grade='Promoted'

-- Select all products with review 'Good'
select * from products where review='Good'

-- Select all students who are 20 years old
select * from students where age=20

-- Select all products with price between 1000 and 50000
select * from products where price between 1000 and 50000

-- Select all students whose name starts with 'P'
select * from students where name like 'P%'

-- Select all products whose name contains 'top'
select * from products where product_name like '%top%'

 -- Using Where Clause
-- Select all students whose city is either 'Hyderabad' or 'Mumbai'
select * from students where city in ('Hyderabad','Mumbai')

-- Select all products whose category is either 'Electronics' or 'Furniture'
select * from products where category in ('Electronics','Furniture')

-- Select all students whose age is greater than 21 and course is 'Python'
select * from students where age>21 and course='Python'

-- Select all products whose price is greater than 1000 and stock is less than 30
select * from products where price>1000 and stock<30

-- Select all students whose name starts with 'R' and city is 'Hyderabad'
select * from students where name like 'R%' and city='Hyderabad'

-- Select all products whose name contains 'o' and review is 'Good'
select * from products where product_name like '%o%' and review='Good'







































