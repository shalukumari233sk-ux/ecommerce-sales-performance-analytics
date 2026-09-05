CREATE DATABASE EcommerceAnalytics;
GO

USE EcommerceAnalytics;
GO

SELECT DB_NAME() AS CurrentDatabase;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE
);
GO

SELECT *
FROM customers;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    cost_price DECIMAL(10,2) NOT NULL
);
GO

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    payment_method VARCHAR(30),
    discount DECIMAL(5,2) DEFAULT 0,
    
    CONSTRAINT FK_orders_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);
GO

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,

    CONSTRAINT FK_order_items_orders
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT FK_order_items_products
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);
GO

INSERT INTO customers
    (customer_id, customer_name, email, city, state, signup_date)
VALUES
    (101, 'Aarav Sharma', 'aarav.sharma@email.com', 'Delhi', 'Delhi', '2025-01-15'),
    (102, 'Priya Singh', 'priya.singh@email.com', 'Mumbai', 'Maharashtra', '2025-01-20'),
    (103, 'Rahul Verma', 'rahul.verma@email.com', 'Bengaluru', 'Karnataka', '2025-02-05'),
    (104, 'Neha Gupta', 'neha.gupta@email.com', 'Pune', 'Maharashtra', '2025-02-18'),
    (105, 'Rohan Mehta', 'rohan.mehta@email.com', 'Ahmedabad', 'Gujarat', '2025-03-02'),
    (106, 'Ananya Das', 'ananya.das@email.com', 'Kolkata', 'West Bengal', '2025-03-12'),
    (107, 'Vikram Patel', 'vikram.patel@email.com', 'Surat', 'Gujarat', '2025-03-25'),
    (108, 'Sneha Iyer', 'sneha.iyer@email.com', 'Chennai', 'Tamil Nadu', '2025-04-03'),
    (109, 'Karan Malhotra', 'karan.malhotra@email.com', 'Delhi', 'Delhi', '2025-04-15'),
    (110, 'Pooja Nair', 'pooja.nair@email.com', 'Kochi', 'Kerala', '2025-04-28'),
    (111, 'Aditya Rao', 'aditya.rao@email.com', 'Hyderabad', 'Telangana', '2025-05-10'),
    (112, 'Simran Kaur', 'simran.kaur@email.com', 'Chandigarh', 'Chandigarh', '2025-05-22'),
    (113, 'Manish Jain', 'manish.jain@email.com', 'Jaipur', 'Rajasthan', '2025-06-05'),
    (114, 'Kavya Reddy', 'kavya.reddy@email.com', 'Hyderabad', 'Telangana', '2025-06-18'),
    (115, 'Arjun Kapoor', 'arjun.kapoor@email.com', 'Noida', 'Uttar Pradesh', '2025-07-01'),
    (116, 'Meera Joshi', 'meera.joshi@email.com', 'Lucknow', 'Uttar Pradesh', '2025-07-14'),
    (117, 'Siddharth Roy', 'siddharth.roy@email.com', 'Kolkata', 'West Bengal', '2025-08-02'),
    (118, 'Ishita Bose', 'ishita.bose@email.com', 'Bengaluru', 'Karnataka', '2025-08-19'),
    (119, 'Nikhil Sethi', 'nikhil.sethi@email.com', 'Gurugram', 'Haryana', '2025-09-04'),
    (120, 'Tanya Kapoor', 'tanya.kapoor@email.com', 'Mumbai', 'Maharashtra', '2025-09-20');
GO

INSERT INTO products
    (product_id, product_name, category, unit_price, cost_price)
VALUES
    (201, 'Laptop Pro 14', 'Electronics', 75000.00, 60000.00),
    (202, 'Laptop Air 13', 'Electronics', 58000.00, 46000.00),
    (203, 'Smartphone X', 'Electronics', 42000.00, 33000.00),
    (204, 'Smartphone Lite', 'Electronics', 22000.00, 17000.00),
    (205, 'Wireless Headphones', 'Accessories', 4500.00, 2800.00),
    (206, 'Wireless Mouse', 'Accessories', 1200.00, 650.00),
    (207, 'Mechanical Keyboard', 'Accessories', 3500.00, 2100.00),
    (208, 'Smart Watch', 'Wearables', 8500.00, 5200.00),
    (209, 'Fitness Band', 'Wearables', 3200.00, 1900.00),
    (210, 'Office Chair', 'Furniture', 12000.00, 8500.00),
    (211, 'Study Table', 'Furniture', 9500.00, 6200.00),
    (212, 'Desk Lamp', 'Home & Office', 1800.00, 900.00),
    (213, 'Monitor 24 Inch', 'Electronics', 14500.00, 10500.00),
    (214, 'USB-C Hub', 'Accessories', 2200.00, 1200.00),
    (215, 'External SSD 1TB', 'Electronics', 7800.00, 5600.00);
GO

INSERT INTO orders
    (order_id, customer_id, order_date, order_status, payment_method, discount)
VALUES
    (5001, 101, '2025-01-10', 'Completed', 'Credit Card', 5.00),
    (5002, 102, '2025-01-15', 'Completed', 'UPI', 10.00),
    (5003, 103, '2025-01-22', 'Completed', 'Debit Card', 0.00),
    (5004, 104, '2025-02-03', 'Completed', 'UPI', 5.00),
    (5005, 105, '2025-02-08', 'Cancelled', 'Credit Card', 0.00),
    (5006, 106, '2025-02-15', 'Completed', 'Net Banking', 15.00),
    (5007, 107, '2025-02-22', 'Completed', 'UPI', 5.00),
    (5008, 108, '2025-03-01', 'Returned', 'Credit Card', 10.00),
    (5009, 109, '2025-03-07', 'Completed', 'Debit Card', 0.00),
    (5010, 110, '2025-03-14', 'Completed', 'UPI', 5.00),
    (5011, 101, '2025-03-20', 'Completed', 'Credit Card', 10.00),
    (5012, 111, '2025-03-28', 'Pending', 'UPI', 0.00),
    (5013, 112, '2025-03-31', 'Completed', 'Debit Card', 5.00),
    (5014, 113, '2025-04-05', 'Completed', 'Credit Card', 10.00),
    (5015, 114, '2025-04-12', 'Completed', 'UPI', 0.00),
    (5016, 115, '2025-04-18', 'Cancelled', 'Debit Card', 5.00),
    (5017, 116, '2025-04-25', 'Completed', 'Net Banking', 15.00),
    (5018, 117, '2025-05-03', 'Completed', 'UPI', 10.00),
    (5019, 118, '2025-05-10', 'Completed', 'Credit Card', 5.00),
    (5020, 119, '2025-05-17', 'Returned', 'Debit Card', 0.00),
    (5021, 120, '2025-05-25', 'Completed', 'UPI', 10.00),
    (5022, 102, '2025-06-02', 'Completed', 'Credit Card', 5.00),
    (5023, 103, '2025-06-09', 'Completed', 'UPI', 0.00),
    (5024, 104, '2025-06-16', 'Pending', 'Debit Card', 10.00),
    (5025, 105, '2025-06-24', 'Completed', 'UPI', 5.00),
    (5026, 106, '2025-07-01', 'Completed', 'Credit Card', 15.00),
    (5027, 107, '2025-07-08', 'Cancelled', 'UPI', 0.00),
    (5028, 108, '2025-07-15', 'Completed', 'Debit Card', 10.00),
    (5029, 109, '2025-07-22', 'Completed', 'Credit Card', 5.00),
    (5030, 110, '2025-07-29', 'Completed', 'UPI', 0.00),
    (5031, 111, '2025-08-05', 'Completed', 'Net Banking', 10.00),
    (5032, 112, '2025-08-12', 'Returned', 'Credit Card', 5.00),
    (5033, 113, '2025-08-19', 'Completed', 'UPI', 15.00),
    (5034, 114, '2025-08-26', 'Completed', 'Debit Card', 0.00),
    (5035, 115, '2025-09-03', 'Completed', 'Credit Card', 10.00),
    (5036, 116, '2025-09-10', 'Cancelled', 'UPI', 5.00),
    (5037, 117, '2025-09-17', 'Completed', 'Debit Card', 0.00),
    (5038, 118, '2025-09-24', 'Completed', 'UPI', 5.00),
    (5039, 119, '2025-10-01', 'Completed', 'Credit Card', 10.00),
    (5040, 120, '2025-10-08', 'Pending', 'UPI', 0.00);
GO

INSERT INTO order_items
    (order_item_id, order_id, product_id, quantity)
VALUES
    (1, 5001, 201, 1),
    (2, 5001, 206, 2),
    (3, 5002, 203, 1),
    (4, 5002, 205, 1),
    (5, 5003, 202, 1),
    (6, 5004, 210, 1),
    (7, 5004, 212, 2),
    (8, 5005, 204, 1),
    (9, 5006, 201, 1),
    (10, 5006, 207, 1),
    (11, 5007, 208, 1),
    (12, 5008, 205, 2),
    (13, 5009, 203, 1),
    (14, 5009, 206, 1),
    (15, 5010, 211, 1),
    (16, 5011, 202, 1),
    (17, 5011, 214, 2),
    (18, 5012, 209, 1),
    (19, 5013, 213, 1),
    (20, 5014, 201, 1),
    (21, 5014, 205, 1),
    (22, 5015, 204, 1),
    (23, 5015, 206, 2),
    (24, 5016, 210, 1),
    (25, 5017, 211, 1),
    (26, 5017, 212, 1),
    (27, 5018, 203, 1),
    (28, 5018, 208, 1),
    (29, 5019, 205, 2),
    (30, 5020, 207, 1),
    (31, 5021, 201, 1),
    (32, 5022, 202, 1),
    (33, 5022, 214, 1),
    (34, 5023, 203, 1),
    (35, 5024, 209, 2),
    (36, 5025, 210, 1),
    (37, 5026, 201, 1),
    (38, 5027, 204, 1),
    (39, 5028, 208, 1),
    (40, 5029, 213, 1),
    (41, 5030, 212, 2),
    (42, 5031, 205, 1),
    (43, 5032, 206, 2),
    (44, 5033, 203, 1),
    (45, 5034, 210, 1),
    (46, 5035, 201, 1),
    (47, 5036, 207, 1),
    (48, 5037, 211, 1),
    (49, 5038, 215, 1),
    (50, 5039, 202, 1),
    (51, 5040, 209, 1);
GO

SELECT
    product_name,
    category,
    unit_price
FROM products
WHERE category = 'Accessories'
 
 SELECT
    product_name,
    category,
    unit_price
FROM products
ORDER BY unit_price DESC;

USE EcommerceAnalytics;
GO

SELECT TOP 5
    product_name,
    category,
    unit_price
FROM products
ORDER BY unit_price DESC;

SELECT
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.category
ORDER BY revenue DESC;

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY
    p.product_name,
    p.category
ORDER BY revenue DESC;


USE EcommerceAnalytics;
GO

SELECT
    c.customer_id,
    c.customer_name,
    c.state,
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY
    c.customer_id,
    c.customer_name,
    c.state
ORDER BY revenue DESC;


USE EcommerceAnalytics;
GO

SELECT
    c.state,
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY c.state
ORDER BY revenue DESC;

SELECT
    YEAR(o.order_date) AS sales_year,
    MONTH(o.order_date) AS sales_month,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date)
ORDER BY
    sales_year,
    sales_month;

    SELECT
    order_status,
    COUNT(*) AS order_count,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM orders)
        AS DECIMAL(5,2)
    ) AS percentage_of_total
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;


SELECT
    payment_method,
    COUNT(*) AS completed_orders
FROM orders
WHERE order_status = 'Completed'
GROUP BY payment_method
ORDER BY completed_orders DESC;


SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS completed_order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY completed_order_count DESC;


WITH order_values AS (
    SELECT
        o.order_id,
        SUM(oi.quantity * p.unit_price) AS order_revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'Completed'
    GROUP BY o.order_id
)
SELECT
    COUNT(*) AS completed_orders,
    SUM(order_revenue) AS total_revenue,
    CAST(AVG(order_revenue) AS DECIMAL(12,2)) AS average_order_value
FROM order_values;



WITH completed_sales AS (
    SELECT
        oi.quantity,
        p.unit_price,
        p.cost_price,
        o.order_id
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    WHERE o.order_status = 'Completed'
),
order_values AS (
    SELECT
        order_id,
        SUM(quantity * unit_price) AS order_revenue
    FROM completed_sales
    GROUP BY order_id
)
SELECT
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT COUNT(*) FROM order_values) AS completed_orders,

    SUM(quantity * unit_price) AS gross_revenue,
    SUM(quantity * cost_price) AS total_cost,
    SUM(quantity * (unit_price - cost_price)) AS gross_profit,

    CAST(
        SUM(quantity * (unit_price - cost_price)) * 100.0 /
        NULLIF(SUM(quantity * unit_price), 0)
        AS DECIMAL(5,2)
    ) AS gross_margin_pct,

    CAST(
        SUM(quantity * unit_price) * 1.0 /
        NULLIF((SELECT COUNT(*) FROM order_values), 0)
        AS DECIMAL(12,2)
    ) AS average_order_value
FROM completed_sales;


SELECT
    product_id,
    product_name,
    unit_price,
    cost_price
FROM products
WHERE unit_price <= cost_price;


SELECT
    o.order_id,
    o.customer_id
FROM orders o
LEFT JOIN customers c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


SELECT
    oi.order_item_id,
    oi.product_id
FROM order_items oi
LEFT JOIN products p
    ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;


SELECT
    oi.order_item_id,
    oi.order_id
FROM order_items oi
LEFT JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;




USE EcommerceAnalytics;
GO

SELECT
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM orders) AS total_orders,

    COUNT(DISTINCT o.order_id) AS completed_orders,

    SUM(oi.quantity * p.unit_price) AS gross_revenue,

    SUM(oi.quantity * p.cost_price) AS total_cost,

    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit,

    CAST(
        SUM(oi.quantity * (p.unit_price - p.cost_price)) * 100.0
        / NULLIF(SUM(oi.quantity * p.unit_price), 0)
        AS DECIMAL(5,2)
    ) AS gross_margin_pct,

    CAST(
        SUM(oi.quantity * p.unit_price) * 1.0
        / NULLIF(COUNT(DISTINCT o.order_id), 0)
        AS DECIMAL(12,2)
    ) AS average_order_value

FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id

WHERE o.order_status = 'Completed';



USE EcommerceAnalytics;
GO

SELECT
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.category
ORDER BY revenue DESC;



USE EcommerceAnalytics;
GO

SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY
    p.product_name,
    p.category
ORDER BY revenue DESC;



USE EcommerceAnalytics;
GO

SELECT
    c.customer_id,
    c.customer_name,
    c.state,
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY
    c.customer_id,
    c.customer_name,
    c.state
ORDER BY revenue DESC;


USE EcommerceAnalytics;
GO

SELECT
    c.state,
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY c.state
ORDER BY revenue DESC;


USE EcommerceAnalytics;
GO

SELECT
    YEAR(o.order_date) AS sales_year,
    MONTH(o.order_date) AS sales_month,
    SUM(oi.quantity * p.unit_price) AS revenue,
    SUM(oi.quantity * (p.unit_price - p.cost_price)) AS gross_profit
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed'
GROUP BY
    YEAR(o.order_date),
    MONTH(o.order_date)
ORDER BY
    sales_year,
    sales_month;


    USE EcommerceAnalytics;
GO

SELECT
    discount,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN order_status = 'Completed' THEN 1 ELSE 0 END) AS completed_orders,
    SUM(CASE WHEN order_status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_orders,
    SUM(CASE WHEN order_status = 'Returned' THEN 1 ELSE 0 END) AS returned_orders,
    SUM(CASE WHEN order_status = 'Pending' THEN 1 ELSE 0 END) AS pending_orders,
    CAST(
        SUM(CASE WHEN order_status = 'Completed' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*)
        AS DECIMAL(5,2)
    ) AS completion_rate_pct
FROM orders
GROUP BY discount
ORDER BY discount;


USE EcommerceAnalytics;
GO

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS completed_order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_status = 'Completed'
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(DISTINCT o.order_id) > 1
ORDER BY completed_order_count DESC;


USE EcommerceAnalytics;
GO

SELECT
    payment_method,
    COUNT(*) AS completed_orders
FROM orders
WHERE order_status = 'Completed'
GROUP BY payment_method
ORDER BY completed_orders DESC;



USE EcommerceAnalytics;
GO

SELECT
    COUNT(DISTINCT o.order_id) AS completed_orders,
    SUM(oi.quantity * p.unit_price) AS total_revenue,
    CAST(
        SUM(oi.quantity * p.unit_price) * 1.0
        / COUNT(DISTINCT o.order_id)
        AS DECIMAL(12,2)
    ) AS average_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Completed';


USE EcommerceAnalytics;
GO

WITH product_sales AS (
    SELECT
        p.product_name,
        p.category,
        SUM(oi.quantity * p.unit_price) AS revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.order_status = 'Completed'
    GROUP BY
        p.product_name,
        p.category
),
ranked_products AS (
    SELECT
        product_name,
        category,
        revenue,
        DENSE_RANK() OVER (ORDER BY revenue DESC) AS revenue_rank
    FROM product_sales
)
SELECT
    product_name,
    category,
    revenue,
    revenue_rank
FROM ranked_products
WHERE revenue_rank <= 5
ORDER BY revenue_rank;


USE EcommerceAnalytics;
GO

SELECT
    order_status,
    COUNT(*) AS order_count,
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM orders)
        AS DECIMAL(5,2)
    ) AS percentage_of_total
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;