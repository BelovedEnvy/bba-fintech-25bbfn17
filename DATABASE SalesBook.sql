CREATE DATABASE SalesBook;
USE SalesBook;

CREATE TABLE sales (
     sale_id      INT         PRIMARY KEY,
     sale_date    DATE        NOT NULL,
     region     VARCHAR(10)   NOT NULL,
     product    VARCHAR(30)   NOT NULL,
     quantity    INT          NOT NULL,
     price      INT           NOT NULL
     );
     
INSERT INTO sales (sale_id, sale_date, region, product, quantity, price) VALUES
(1, '2026-01-01', 'North', 'Laptop', 5, 55000.00),
(2, '2026-01-02', 'South', 'Smartphone', 12, 18000.00),
(3, '2026-01-03', 'East', 'Headphones', 20, 1500.00),
(4, '2026-01-04', 'West', 'Monitor', 8, 12000.00),
(5, '2026-01-05', 'North', 'Keyboard', 15, 800.00),
(6, '2026-01-06', 'South', 'Mouse', 25, 500.00),
(7, '2026-01-07', 'East', 'Laptop', 3, 62000.00),
(8, '2026-01-08', 'West', 'Smartphone', 10, 22000.00),
(9, '2026-01-09', 'North', 'Headphones', 18, 2000.00),
(10, '2026-01-10', 'South', 'Monitor', 6, 15000.00),
(11, '2026-01-11', 'East', 'Keyboard', 22, 900.00),
(12, '2026-01-12', 'West', 'Mouse', 30, 450.00),
(13, '2026-01-13', 'North', 'Smartphone', 7, 25000.00),
(14, '2026-01-14', 'South', 'Laptop', 4, 58000.00),
(15, '2026-01-15', 'East', 'Monitor', 9, 11000.00),
(16, '2026-01-16', 'West', 'Headphones', 14, 1800.00),
(17, '2026-01-17', 'North', 'Mouse', 40, 400.00),
(18, '2026-01-18', 'South', 'Keyboard', 17, 750.00),
(19, '2026-01-19', 'East', 'Smartphone', 11, 20000.00),
(20, '2026-01-20', 'West', 'Laptop', 2, 65000.00),
(21, '2026-01-21', 'North', 'Monitor', 7, 13500.00),
(22, '2026-01-22', 'South', 'Headphones', 24, 1200.00),
(23, '2026-01-23', 'East', 'Mouse', 35, 550.00),
(24, '2026-01-24', 'West', 'Keyboard', 13, 1000.00),
(25, '2026-01-25', 'North', 'Laptop', 6, 60000.00),
(26, '2026-01-26', 'South', 'Smartphone', 9, 24000.00),
(27, '2026-01-27', 'East', 'Headphones', 16, 1700.00),
(28, '2026-01-28', 'West', 'Monitor', 5, 14000.00),
(29, '2026-01-29', 'North', 'Keyboard', 20, 850.00),
(30, '2026-01-30', 'South', 'Mouse', 28, 600.00),
(31, '2026-02-01', 'East', 'Laptop', 4, 57000.00),
(32, '2026-02-02', 'West', 'Smartphone', 13, 21000.00),
(33, '2026-02-03', 'North', 'Headphones', 21, 1600.00),
(34, '2026-02-04', 'South', 'Monitor', 10, 12500.00),
(35, '2026-02-05', 'East', 'Keyboard', 18, 950.00),
(36, '2026-02-06', 'West', 'Mouse', 32, 480.00),
(37, '2026-02-07', 'North', 'Smartphone', 8, 23000.00),
(38, '2026-02-08', 'South', 'Laptop', 3, 63000.00),
(39, '2026-02-09', 'East', 'Monitor', 12, 11800.00),
(40, '2026-02-10', 'West', 'Headphones', 19, 1900.00),
(41, '2026-02-11', 'North', 'Mouse', 26, 520.00),
(42, '2026-02-12', 'South', 'Keyboard', 14, 880.00),
(43, '2026-02-13', 'East', 'Smartphone', 6, 26000.00),
(44, '2026-02-14', 'West', 'Laptop', 5, 59000.00),
(45, '2026-02-15', 'North', 'Monitor', 11, 13000.00),
(46, '2026-02-16', 'South', 'Headphones', 17, 1400.00),
(47, '2026-02-17', 'East', 'Mouse', 38, 420.00),
(48, '2026-02-18', 'West', 'Keyboard', 16, 920.00),
(49, '2026-02-19', 'North', 'Smartphone', 10, 19500.00),
(50, '2026-02-20', 'South', 'Laptop', 7, 61000.00);
select*from sales;
SELECT count(*) AS total_sales from sales;
SELECT count(*) AS region_sales from sales 	WHERE region='SOUTH';
SELECT region, count(*) AS NO_OF_SALES FROM SALES group by REGION;
SELECT SUM(QUANTITY) AS TOTAL_STOCK FROM SALES group by PRODUCT;
SELECT AVG(QUANTITY*PRICE)AS TOTAL_PRICE_AVG FROM SALES;
SELECT AVG(QUANTITY*PRICE)AS TOTAL_PRICE_AVG FROM SALES WHERE region="NORTH";
SELECT PRODUCT, AVG(QUANTITY*PRICE) AS TOTAL_PRODUCT_AVG FROM SALES group by PRODUCT;