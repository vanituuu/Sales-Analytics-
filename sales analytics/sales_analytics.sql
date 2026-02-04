CREATE  DATABASE SALES_ANALYTICS;

USE  SALES_ANALYTICS;

-- create customer table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(30),
    signup_date DATE
);

-- create product table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);


-- create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    payment_method VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
	
-- create orders items
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- create the payment table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
  
-- INSERT THE CUSTOMER TABLE
INSERT INTO customers (customer_name, gender, age, city, signup_date)  VALUES
('Harsh','Male',22,'Delhi','2023-01-01'),
('Vanita','Female',23,'Mumbai','2023-01-02'),
('Sahil','Male',24,'Pune','2023-01-03'),
('Vanshika','Female',25,'Chandigarh','2023-01-04'),
('Sahil','Male',26,'Bengaluru','2023-01-05'),
('Arun','Female',27,'Delhi','2023-01-06'),
('Vijay','Male',28,'Mumbai','2023-01-07'),
('Ranju','Female',29,'Pune','2023-01-08'),
('Vikas','Male',30,'Chandigarh','2023-01-09'),
('Akanksha','Female',31,'Bengaluru','2023-01-10'),
('Rohit','Male',32,'Delhi','2023-01-11'),
('Neha','Female',33,'Mumbai','2023-01-12'),
('Vishal','Male',34,'Pune','2023-01-13'),
('Sneha','Female',35,'Chandigarh','2023-01-14'),
('Rishav','Male',36,'Bengaluru','2023-01-15'),
('Muskan','Female',24,'Delhi','2023-01-16'),
('Prikshit','Male',26,'Mumbai','2023-01-17'),
('Shweta','Female',28,'Pune','2023-01-18'),
('Kunal','Male',30,'Chandigarh','2023-01-19'),
('Ritka','Female',32,'Bengaluru','2023-01-20'),
('Akash','Male',34,'Delhi','2023-01-21'),
('komal','Female',36,'Mumbai','2023-01-22'),
('Sunny','Male',38,'Pune','2023-01-23'),
('Chadni','Female',40,'Chandigarh','2023-01-24'),
('Rahul','Male',42,'Bengaluru','2023-01-25'),
('Divya','Female',23,'Delhi','2023-01-26'),
('Daksh','Male',25,'Mumbai','2023-01-27'),
('Mannat','Female',27,'Pune','2023-01-28'),
('Ashish','Male',29,'Chandigarh','2023-01-29'),
('Sawrna','Female',31,'Bengaluru','2023-01-30');

-- insert the products
INSERT INTO products (product_name, category, price)  VALUES
('Mobile','Electronics',15000),
('Laptop','Electronics',55000),
('Headphones','Electronics',2500),
('T-Shirt','Clothing',800),
('Jeans','Clothing',1800),
('Mixer','Home',3500),
('Vacuum Cleaner','Home',7500),
('Face Cream','Beauty',600),
('Perfume','Beauty',2200),
('Shoes','Sports',2800);

-- insert the orders
INSERT INTO orders (customer_id ,order_date,payment_method) VALUES
(1,'2024-01-01','UPI'),
(2,'2024-01-02','Card'),
(3,'2024-01-03','UPI'),
(4,'2024-01-04','Cash'),
(5,'2024-01-05','UPI'),
(1,'2024-01-06','Card'),
(2,'2024-01-07','UPI'),
(3,'2024-01-08','Cash'),
(4,'2024-01-09','UPI'),
(5,'2024-01-10','Card'),
(6,'2024-01-11','UPI'),
(7,'2024-01-12','Cash'),
(8,'2024-01-13','UPI'),
(9,'2024-01-14','Card'),
(10,'2024-01-15','UPI'),
(11,'2024-01-16','Cash'),
(12,'2024-01-17','UPI'),
(13,'2024-01-18','Card'),
(14,'2024-01-19','UPI'),
(15,'2024-01-20','Cash'),
(16,'2024-01-21','UPI'),
(17,'2024-01-22','Card'),
(18,'2024-01-23','UPI'),
(19,'2024-01-24','Cash'),
(20,'2024-01-25','UPI'),
(21,'2024-01-26','Card'),
(22,'2024-01-27','UPI'),
(23,'2024-01-28','Cash'),
(24,'2024-01-29','UPI'),
(25,'2024-01-30','Card'),
(26,'2024-02-01','UPI'),
(27,'2024-02-02','Cash'),
(28,'2024-02-03','UPI'),
(29,'2024-02-04','Card'),
(30,'2024-02-05','UPI'),
(1,'2024-02-06','Cash'),
(2,'2024-02-07','UPI'),
(3,'2024-02-08','Card'),
(4,'2024-02-09','UPI'),
(5,'2024-02-10','Cash');

-- insert the order items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1,1,1),(1,4,2),
(2,2,1),(3,3,1),
(4,4,2),(5,5,1),
(6,1,1),(7,3,2),
(8,5,1),(9,2,1),
(10,6,1),(11,1,1),
(12,4,2),(13,3,1),
(14,5,1),(15,2,1),
(16,6,1),(17,1,1),
(18,4,2),(19,3,1),
(20,5,1),(21,2,1),
(22,6,1),(23,1,1),
(24,4,2),(25,3,1),
(26,5,1),(27,2,1),
(28,6,1),(29,1,1),
(30,4,2),(31,3,1),
(32,5,1),(33,2,1),
(34,6,1),(35,1,1),
(36,4,2),(37,3,1),
(38,5,1),(39,2,1),
(40,6,1);



-- insert the payment
INSERT INTO payments (order_id, payment_status)  VALUES
(1,'Success'),(2,'Success'),(3,'Failed'),(4,'Success'),
(5,'Success'),(6,'Success'),(7,'Failed'),(8,'Success'),
(9,'Success'),(10,'Success'),
(11,'Success'),(12,'Failed'),(13,'Success'),(14,'Success'),
(15,'Success'),(16,'Success'),(17,'Failed'),(18,'Success'),
(19,'Success'),(20,'Success'),
(21,'Success'),(22,'Failed'),(23,'Success'),(24,'Success'),
(25,'Success'),(26,'Success'),(27,'Failed'),(28,'Success'),
(29,'Success'),(30,'Success'),
(31,'Success'),(32,'Failed'),(33,'Success'),(34,'Success'),
(35,'Success'),(36,'Success'),(37,'Failed'),(38,'Success'),
(39,'Success'),(40,'Success');

-- sql query
-- Basic 
SELECT count(*) AS Total_customers FROM customers;
-- Total orders
SELECT count(*) AS Total_orders FROM orders;
-- Total order_items
SELECT COUNT(*) AS Total_orders_items FROM order_items;

-- Next question
-- city by total customers
SELECT city,count(*) as Total_customers 
FROM customers 
GROUP BY city;

-- Total order placed by each customer

SELECT 	c.customer_name,count(o.order_id) as  Total_order
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id 
GROUP BY c.customer_name;

-- customer placed more than 1 order

SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

-- total revenue genrated by products
 SELECT p.product_name,
 SUM(p.price*oi.quantity)AS Total_Revenue 
 FROM products p 
 JOIN order_items oi ON p.product_id = oi.product_id
 Group By product_name;
 
-- TOP 5 most sold product
SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 5;

-- Total revenue genrated by each customer
SELECT c.customer_name,
	SUM(oi.quantity*p.price) AS Total_Revenue
    FROM customers c 
    JOIN orders o ON c.customer_id=o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON  oi.order_id = p.product_id 
    GROUP BY c.customer_name;
    
-- Customer who never placed an order
 SELECT c.customer_name FROM customers c 
 LEFT JOIN orders o ON c.customer_id=o.customer_id
 where o.order_id IS NULL;

-- payment

SELECT payment_status,COUNT(*) AS payments_status
FROM payments
GROUP BY payment_status;

-- ordered with failed payment
SELECT o.order_id, o.order_date, p.payment_status
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status = 'Failed';


-- Monthly order date
SELECT MONTH(order_date) AS month,count(*) AS Total_order   
 FROM orders  
 GROUP BY MONTH(order_date);
 
 -- Average order value
SELECT AVG(order_total) AS avg_order_value
FROM (
    SELECT o.order_id,
           SUM(oi.quantity * p.price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.order_id
) t;

-- Highest spending customer
SELECT c.customer_name,
SUM(oi.quantity*p.price) AS total_spend
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spend DESC
LIMIT 1;

-- revenue genrated by each category
SELECT p.category,
       SUM(oi.quantity * p.price) AS category_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category;

-- Customer whoes spend over than average
SELECT c.customer_name,
 SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
HAVING total_spent > 
(		
		SELECT AVG(customer_total)
    FROM (
        SELECT SUM(oi.quantity * p.price) AS customer_total
        FROM orders o
        JOIN order_items oi ON o.order_id = oi.order_id
        JOIN products p ON oi.product_id = p.product_id
        GROUP BY o.customer_id
    ) avg_table
);

-- create view
CREATE VIEW order_revenue AS
SELECT o.order_id,
       SUM(oi.quantity * p.price) AS total_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id;

--  Rank top customers
SELECT customer_name,total_spend,Rank()over(ORDER BY total_spend DESC)AS spend_rank
FROM(
    SELECT c.customer_name,SUM(oi.quantity*p.price)AS total_spend
    FROM customers c 
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY c.customer_id,c.customer_name

    ) AS customer_totals;

