# SQL Sales Data Analysis Project

## Project Overview

This project focuses on analyzing a cleaned sales dataset using SQL in PostgreSQL (pgAdmin).

The goal of the project was to extract meaningful business insights from transactional sales data through SQL queries and analytical techniques.

#### The analysis helped uncover patterns in:
- Sales performance
- Customer purchasing behavior
- Product demand
- Revenue generation
- Payment methods
- Order trends

---

## Objectives

The objectives of this project were to:

- Perform business analysis using SQL
- Extract insights from sales transactions
- Analyze revenue trends
- Identify top-selling products
- Explore customer purchasing behavior
- Examine payment methods and order status
- Improve SQL querying skills

---

## Tools & Technologies Used

- PostgreSQL
- pgAdmin 4
- SQL
- Excel
- CSV Dataset

---

## Dataset Description

The dataset contains sales transaction records including:

- Order ID
- Date
- Customer ID
- Product
- Quantity
- Unit Price
- Payment Method
- Order Status
- Coupon Code
- Referral Source
- Total Price

---

## Database Creation

A PostgreSQL database was created for the analysis.

#### Example:

```sql
CREATE DATABASE sales_analysis;
Table Creation

The dataset was stored in a SQL table named:

sales_data
Example:
CREATE TABLE sales_data (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress TEXT,
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);
```
### SQL Analysis Performed
##### 1. Total Revenue Analysis

The total revenue generated from all transactions was calculated.

###### Example:
```
SELECT 
    SUM(TotalPrice) AS total_revenue
FROM sales_data;
```
##### 2. Top-Selling Products

Products with the highest number of orders were identified.

###### Example:
```
SELECT 
    Product,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY Product
ORDER BY total_orders DESC;
```
##### 3. Product Revenue Analysis

Products generating the highest revenue were analyzed.

###### Example:
```
SELECT 
    Product,
    SUM(TotalPrice) AS revenue
FROM sales_data
GROUP BY Product
ORDER BY revenue DESC;
```
##### 4. Payment Method Analysis

Customer payment preferences were examined.

###### Example:
```
SELECT 
    PaymentMethod,
    COUNT(*) AS usage_count
FROM sales_data
GROUP BY PaymentMethod
ORDER BY usage_count DESC;
```
###### 5. Monthly Revenue Trend

Monthly sales performance was analyzed to identify revenue trends.

###### Example:
```
SELECT 
    EXTRACT(MONTH FROM Date) AS month,
    SUM(TotalPrice) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;
```
##### 6. Customer Spending Analysis

Customers with the highest spending were identified.

###### Example:
```
SELECT 
    CustomerID,
    SUM(TotalPrice) AS total_spent
FROM sales_data
GROUP BY CustomerID
ORDER BY total_spent DESC;
```
##### 7. Order Status Analysis

Order statuses were analyzed to understand transaction outcomes.

###### Example:
```
SELECT 
    OrderStatus,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY OrderStatus;
```
### Key Insights

The SQL analysis revealed several important business insights:

- Certain products generated significantly higher revenue
- Customer payment preferences were identified
- Monthly revenue trends highlighted periods of high sales performance
- Customer spending behavior was analyzed
- Order status analysis provided insight into completed and cancelled orders

### SQL Concepts Used

This project demonstrated the use of:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- AVG()
- MAX()
- DISTINCT
- Aggregate Functions

### Skills Demonstrated
- SQL Querying
- PostgreSQL
- Database Management
- Business Analysis
- Data Exploration
- Data Aggregation
- Problem Solving
- Analytical Thinking

### Key Learning Outcomes

Through this project, I gained practical experience in:

- Writing SQL queries for business analysis
- Working with PostgreSQL databases
- Importing CSV datasets into SQL
- Performing revenue and customer analysis
- Extracting actionable business insights from data

### Future Improvements

Potential future enhancements include:

- Building Power BI dashboards from SQL outputs
- Advanced SQL joins and subqueries
- Window functions and CTEs
- Customer segmentation analysis
- Sales forecasting

### Author

Yusuf Akande

Aspiring Data Analyst passionate about SQL, Python, Power BI, and transforming raw data into actionable business insights.
