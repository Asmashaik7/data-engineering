-- =========================================
-- CREATE TABLE : sales_orders
-- =========================================
use SphoorthiDB;

CREATE TABLE sales_orders (
    order_id INT,
    customer_name Varchar(50),
    city Varchar(20),
    product_name Varchar(20),
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

--practiced on:17-05-26
--DIFFERNECE BETWEEN GROUP BY AND WINDOW FUNC
--Query 1 → Using GROUP BY - Returns one row per city.

--Total sales amount per each city
select city,sum(amount) as total_by_city
from sales_orders
group by city;

/*
city	total_by_city
Bangalore	120900
Chennai	24500
Delhi	100000
Hyderabad	82700
Mumbai	206500
Pune	73000 */

--Query 2 → Using WINDOW FUNCTION--
--sum(amount) over(partition by city) calculates total for each city without grouping rows.
-- Because it repeats totals for every row in the same city. Use DISTINCT to remove duplicates.

select city,
      sum(amount) over(partition by city) as total_by_city
from sales_orders;

/*
Result:
city	total_by_city
Bangalore	120900
Bangalore	120900
Bangalore	120900
Chennai	24500
Chennai	24500
Chennai	24500
Delhi	100000
Delhi	100000
Delhi	100000
Hyderabad	82700
Hyderabad	82700
Hyderabad	82700
Hyderabad	82700
Mumbai	206500
Mumbai	206500
Mumbai	206500
Mumbai	206500
Pune	73000
Pune	73000
Pune	73000

*/
--If we use DISTINCT, THEN THIS REPETITION OF CITY NAMES WILL NOT SHOWN

select distinct city,
sum(amount) as total_by_city
from sales_orders
group by city;

/*
Result:
city	total_by_city
Bangalore	120900
Chennai	24500
Delhi	100000
Hyderabad	82700
Mumbai	206500
Pune	73000
*/

--above 2 queries are same giving same inputs but diff ways.

--Main Difference
--GROUP BY → collapses rows into groups.
--OVER(PARTITION BY) → keeps original rows and adds calculated values.