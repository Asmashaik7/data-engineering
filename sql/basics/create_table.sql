-- =========================================
-- TABLE 1 : students
-- =========================================

CREATE TABLE students (
    id INTEGER,
    name TEXT,
    age INTEGER,
    city TEXT,
    course TEXT,
    grade TEXT
);


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
-- The Above code creates below table,
-- column names and respective values 
-- we use SELECT statement to extract respective Columns
-- =========================================
select * from students;
/*

+----+--------+-----+------------+----------+-----------+
| id | name   | age | city       | course   | grade     |
+----+--------+-----+------------+----------+-----------+
| 1  | Ravi   | 20  | Hyderabad  | SQL      | Pass      |
| 2  | Sneha  | 22  | Bangalore  | Python   | Promoted  |
| 3  | Arjun  | 21  | Chennai    | SQL      | Failed    |
| 4  | Priya  | 23  | Mumbai     | Power BI | Pass      |
| 5  | Kiran  | 20  | Pune       | Python   | Promoted  |
+----+--------+-----+------------+----------+-----------+

*/




-- Ex Run below code and see which column is being returned ?

select course  from students;

-- Extract/show city column

select city from students;
-- Extract/ show grade column 

select grade from students;
-- Extract age column 
select age from students;

-- now try to Extract multiple columns,
-- each column in select statement should be comma seperated
-- select column1,column2 from tableName

-- extract name,age columns 

select name,age from students;

-- extract name,age,course, grade from the table 

select name,age,course from students;



-- extract all the columns except id column 

select name,age,city,course,grade from students;
