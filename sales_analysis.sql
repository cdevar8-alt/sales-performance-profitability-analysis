-- 1. Overall sales and profitability
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM Orders;

-- 2. Sales and profit by category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Sales and profit by region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Region
ORDER BY total_sales DESC;

-- 4. Sales and profit by sub-category
SELECT
    Sub_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Sub_Category
ORDER BY total_profit DESC;

-- 5. Sales and profit by shipping mode
SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Ship_Mode
ORDER BY total_sales DESC;