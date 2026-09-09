
CREATE DATABASE BUSINESS;
USE BUSINESS;
CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(30)
);
CREATE TABLE Product
(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    catagory VARCHAR(30),
    price DECIMAL(10,2)
    quantity INT
);
SHOW DATABASES;
SHOW TABLES;
DESC Customer;
DESC Product;

ALTER TABLE Customer
ADD address VARCHAR(100);

DESC Customer;

ALTER TABLE Customer
MODIFY phone