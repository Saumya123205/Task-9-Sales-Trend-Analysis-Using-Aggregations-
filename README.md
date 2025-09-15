# Sales Analysis Using PostgreSQL

## Objective

The goal of this project is to perform a detailed time-based analysis of sales data to identify trends in revenue, order volume, and product performance. This helps uncover peak sales periods, seasonal demand patterns, and customer buying behavior to support data-driven business decisions.

## Dataset Overview

 • The dataset used in this project includes the following fields:

 • order_id – Unique identifier for each order

 • order_date – Date when the order was placed

 • product_id – Unique identifier for each product sold

 • quantity – Number of units sold per order

 • total_price – Total revenue generated from each order

## Key SQL Views Created

### 1-Monthly Sales Analysis (monthly_sales)

 • Tracks monthly total revenue, order count, and units sold.

 • Helps identify overall business growth trends.

### 2-Year-Specific Sales Filter (sales_on_2023)

 • Focuses on sales performance for a given year (e.g., 2023).

### 3-Peak Sales Months (peak_sales_months)

 • Identifies the top 5 months with the highest revenue.

### 4-Daily Revenue and Orders Trend (daily_revenue_and_orders)

 • Analyzes sales patterns on a day-to-day basis.

### 5-Top Products by Revenue (best_selling_product)

 • Lists the top 10 products generating the highest revenue.

### 6-Average Order Value (AOV) per Month (average_order_value_per_month)

 • Tracks how much customers spend per order, month by month.

### 7-Seasonal Trends by Quarter (trends_by_quarter)

 • Provides quarterly revenue and order summaries to detect seasonal patterns.

## Key Insights

### 1-Monthly Growth:
 • The analysis shows clear growth trends and identifies slow months where additional promotions or campaigns could help.

### 2-Top-Performing Months:
 • Peak sales months were revealed, helping to understand when to stock up inventory or run targeted marketing campaigns.

### 3-Best-Selling Products:
 • A small group of products contributes a significant share of revenue, highlighting the need to focus on these high-performing items.

### 4-Seasonality:
 • Quarterly analysis shows certain quarters have consistently higher sales, suggesting seasonal demand cycles.

### 5-Customer Spending Behavior:
 • Tracking the Average Order Value gives insight into how customer purchase patterns evolve over time.
