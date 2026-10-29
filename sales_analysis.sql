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

-- 6. Discount and profitability by sub-category
SELECT
    Sub_Category,
    ROUND(AVG(Discount), 3) AS avg_discount,
    ROUND(SUM(Profit), 2) AS total_profit
FROM Orders
GROUP BY Sub_Category
ORDER BY total_profit ASC;

-- 7. Profitability by discount level
SELECT
    CASE
        WHEN Discount >= 0.20 THEN 'High Discount'
        ELSE 'Low Discount'
    END AS discount_level,
    COUNT(*) AS total_rows,
    ROUND(AVG(Discount), 3) AS avg_discount,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(AVG(Profit), 2) AS avg_profit_per_row
FROM Orders
GROUP BY discount_level
ORDER BY total_profit ASC;

-- 8. Profitability by sub-category and discount level
SELECT
    Sub_Category,
    CASE
        WHEN Discount >= 0.20 THEN 'High Discount'
        ELSE 'Low Discount'
    END AS discount_level,
    COUNT(*) AS total_rows,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        100.0 * SUM(Profit) / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM Orders
GROUP BY
    Sub_Category,
    discount_level
ORDER BY
    Sub_Category,
    discount_level;
