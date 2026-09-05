-- Ecommerce Business Analytics
-- SQL Server / SSMS
-- Database setup and sample data

CREATE DATABASE EcommerceAnalytics;
GO

USE EcommerceAnalytics;
GO

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    signup_date DATE
);
GO

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

-- Data loading is represented in ecommerce_sample_data.sql
