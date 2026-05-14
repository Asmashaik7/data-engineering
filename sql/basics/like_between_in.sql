-- =========================================
-- Table Creation : ecommerce products
-- =========================================
--between , like, in

CREATE TABLE products1 (
    product_id INT,
    product_name VARCHAR(30), 
    category VARCHAR(30),
    price REAL
);      

-- =========================================
-- Insert Sample Data into products table
-- =========================================

INSERT INTO products1 (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 499.99),
(3, 'Headphones', 'Electronics', 199.99),
(4, 'Coffee Maker', 'Home Appliances', 79.99),
(5, 'Blender', 'Home Appliances', 59.99),
(6, 'Air Fryer', 'Home Appliances', 129.99),
(7, 'Running Shoes', 'Footwear', 89.99),
(8, 'Sandals', 'Footwear', 39.99),
(9, 'Boots', 'Footwear', 149.99),
(10, 'T-shirt', 'Clothing', 19.99),
(11, 'Jeans', 'Clothing', 49.99),
(12, 'Jacket', 'Clothing', 89.99),
(13, 'Sofa', 'Furniture', 899.99),
(14, 'Dining Table', 'Furniture', 499.99),
(15, 'Bed Frame', 'Furniture', 699.99),
(16, 'Bookshelf', 'Furniture', 199.99),
(17, 'Office Chair', 'Furniture', 149.99),
(18, 'TV Stand', 'Furniture', 299.99),
(19, 'Wardrobe', 'Furniture', 799.99),
(20, 'Coffee Table', 'Furniture', 249.99);

SELECT * 
FROM products1

-- Sample Queries to practice LIKE, IN, BETWEEN operators
-- 1. Using LIKE operator to find products that start with 'S'
SELECT *
FROM PRODUCTS1
WHERE product_name LIKE 'S%'

-- 2. Using IN operator to find products in the 'Electronics' and 'Furniture' categories
SELECT product_name, category
FROM PRODUCTS1
WHERE CATEGORY IN ('Electronics','Furniture')

-- 3. Using BETWEEN operator to find products with price between 100 and 500
SELECT product_name, PRICE
FROM PRODUCTS1
WHERE PRICE BETWEEN 100 AND 500