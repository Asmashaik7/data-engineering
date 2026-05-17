--WINDOW FUNCTIONS

-- =========================================
-- CREATE TABLE : sales_orders
-- =========================================
delete sales_orders --only deletes data row by row, structure remains. -o/p: only headers will appear
truncate table sales_orders --only deletes data at a time, structure remains. -o/p: only headers will appear
drop table sales_orders -- both data and structure get destroyed. -o/p: Invalid object name 'sales_orders'.

select * from sales_orders

CREATE TABLE sales_orders (
    order_id INT,
    customer_name varchar(50),
    city varchar(30),
    product_name varchar(50),
    amount REAL,
    order_date DATE
);


-- =========================================
-- INSERT DATA
-- =========================================

INSERT INTO sales_orders VALUES

(1001, 'Ravi', 'Hyderabad', 'Laptop', 75000, '2025-01-01'),

(1002, 'Sneha', 'Bangalore', 'Phone', 45000, '2025-01-02'),

(1003, 'Arjun', 'Chennai', 'Chair', 5000, '2025-01-03'),

(1004, 'Priya', 'Mumbai', 'Laptop', 75000, '2025-01-03'),

(1005, 'Kiran', 'Pune', 'Bottle', 500, '2025-01-04'),

(1006, 'Rahul', 'Hyderabad', 'Mouse', 700, '2025-01-05'),

(1007, 'Meena', 'Delhi', 'Table', 12000, '2025-01-06'),

(1008, 'Suresh', 'Chennai', 'Keyboard', 1500, '2025-01-07'),

(1009, 'Anita', 'Mumbai', 'Phone', 45000, '2025-01-07'),

(1010, 'Vikram', 'Bangalore', 'Laptop', 75000, '2025-01-08'),

(1011, 'Neha', 'Pune', 'Bottle', 500, '2025-01-09'),

(1012, 'Ramesh', 'Hyderabad', 'Chair', 5000, '2025-01-10'),

(1013, 'Divya', 'Delhi', 'Phone', 45000, '2025-01-11'),

(1014, 'Karthik', 'Mumbai', 'Laptop', 80000, '2025-01-12'),

(1015, 'Lavanya', 'Bangalore', 'Mouse', 900, '2025-01-13'),

(1016, 'Harish', 'Chennai', 'Monitor', 18000, '2025-01-14'),

(1017, 'Pooja', 'Hyderabad', 'Keyboard', 2000, '2025-01-15'),

(1018, 'Nikhil', 'Pune', 'Laptop', 72000, '2025-01-16'),

(1019, 'Asha', 'Delhi', 'Phone', 43000, '2025-01-17'),

(1020, 'Manoj', 'Mumbai', 'Chair', 6500, '2025-01-18');


select * from sales_orders;

====================================================================
-- Practice Queries Below 

-- minimum order amount for each city
-- This query retrieves the minimum order amount for each city, along with the rank of each order
select order_id,
    product_name,
    city,
    amount,
    order_date,
      
 sum(amount) over() as overall_total_amt
from sales_orders
where city in ('Hyderabad','Pune')
order by city
;
--       sum(amount) over(partition by order_date) as total_by_date,
--       sum(amount) over(partition by city) as total_by_city
      
--       -- sum(amount) over(partition by city) as sales_by_dt_3,
-- row_number() over(order by amount desc) as rw_nmbr,
--rank() over(order by amount desc) as sales_rnk,
--dense_rank() over(order by amount desc) as dense_rnk,
--rank() over(partition by city order by amount desc) as city_sales_rnk


-- maximum order amount for each city
-- This query retrieves the maximum order amount for each city, along with the rank of each order

-- Total sales amount for each city
-- This query retrieves the total sales amount for each city, along with the rank of each order

-- total sales amount for each city ordered by order date
-- This query retrieves the total sales amount for each city, ordered by the order date, along

-- Top Sales Orders by Amount
-- This query retrieves the top 5 sales orders based on the amount, along with their rank.


-- Top Sales Orders by Amount with Partitioning by City
-- This query retrieves the top 5 sales orders based on the amount for each city, along with their rank within each city.

-- Top Sales Orders by Amount with Partitioning by City and Ordering by Order Date
-- This query retrieves the top 5 sales orders based on the amount for each city,
--  ordered by the order date, along with their rank within each city.


-- Apply Row_number, rank, dense_rank to be below data and find the difference between them.