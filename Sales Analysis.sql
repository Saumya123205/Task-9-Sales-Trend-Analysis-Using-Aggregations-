CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10,2)
);

select * from online_sales

-- Monthly Sales Analysis

create view monthly_sales as 
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity_sold
FROM online_sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month_year;

select * from monthly_sales

-- Filter for a Specific Year (e.g., 2023)

create view sales_on_2023 as 
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity_sold
FROM online_sales
WHERE EXTRACT(YEAR FROM order_date) = 2023
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month_year;

select * from sales_on_2023

-- Identify Peak Sales Months

create view peak_sales_months as
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity_sold
FROM online_sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY total_revenue DESC
LIMIT 5;

select * from peak_sales_months

-- Daily Revenue and Orders Trend

create view daily_revenue_and_orders as
SELECT 
    order_date,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity_sold
FROM online_sales
GROUP BY order_date
ORDER BY order_date;

select * from daily_revenue_and_orders;

-- Best-Selling Products by Revenue (Top 10)

create view best_selling_product as 
SELECT 
    product_id,
    SUM(quantity) AS total_units_sold,
    SUM(total_price) AS total_revenue
FROM online_sales
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;

select * from best_selling_product;

-- Average Order Value (AOV) Per Month

create view average_order_value_per_month as 
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    ROUND(SUM(total_price)::NUMERIC / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM online_sales
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month_year;

select * from average_order_value_per_month;

-- Identify Seasonal Trends by Quarter

create view trends_by_quarter as 
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(QUARTER FROM order_date) AS quarter,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, quarter
ORDER BY year, quarter;

select * from trends_by_quarter;