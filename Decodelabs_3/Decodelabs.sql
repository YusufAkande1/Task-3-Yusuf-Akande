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

SELECT *
FROM sales_data
LIMIT 10;


-- Total Revenue
SELECT 
    SUM(TotalPrice) AS total_revenue
FROM sales_data;

--Top Selling Products
SELECT 
    Product,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY Product
ORDER BY total_orders DESC;

--Most Used Payment Method
SELECT 
    PaymentMethod,
    COUNT(*) AS usage_count
FROM sales_data
GROUP BY PaymentMethod
ORDER BY usage_count DESC;


--Monthly Revenue Trend
SELECT 
    EXTRACT(MONTH FROM Date) AS month,
    SUM(TotalPrice) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

--Products Generating Highest Revenue
SELECT 
    Product,
    SUM(TotalPrice) AS revenue
FROM sales_data
GROUP BY Product
ORDER BY revenue DESC;

--Cancelled Orders
SELECT *
FROM sales_data
WHERE OrderStatus = 'Cancelled';

--Customers Spending Most
SELECT 
    CustomerID,
    SUM(TotalPrice) AS total_spent
FROM sales_data
GROUP BY CustomerID
ORDER BY total_spent DESC;
