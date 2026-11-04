# Sales Performance & Profitability Analysis

## Project Overview

This project analyzes sales performance and profitability using SQL, SQLite, and Tableau. The objective is to evaluate product and regional performance, identify unprofitable sub-categories, and investigate how discount levels relate to profitability.

SQL was used to query, aggregate, and analyze sales data, while Tableau was used to develop a dashboard presenting key performance indicators (KPIs), category-level sales, high-discount profitability, and a discount profitability heatmap.

The goal is to translate raw sales data into actionable business insights that support better pricing, discounting, and profitability decisions.

## Tools & Technologies

- **SQL (SQLite):** Data aggregation, filtering, grouping, sorting, conditional logic, and profitability analysis
- **DB Browser for SQLite:** Database management and SQL query execution
- **Tableau Desktop:** Dashboard development, KPI visualization, bar charts, and profitability heatmap
- **GitHub:** Project documentation, file sharing, and version control

## Business Questions

1. What are the overall sales, total profit, and number of orders?
2. Which product categories generate the highest sales?
3. Which regions contribute the most sales?
4. Which sub-categories are the most and least profitable?
5. How do shipping modes compare in order volume, sales, and profit?
6. How do high-discount records compare with low-discount records in terms of sales and profitability?
7. Which product sub-categories experience the greatest losses under high discounts?
8. How does profitability differ between high- and low-discount records within each sub-category?

## SQL Analysis

The SQL analysis includes:

- Overall sales, profit, profit margin, and order metrics
- Sales and profit comparisons by product category and region
- Sub-category profitability analysis
- Order volume and performance by shipping mode
- Average discounts and profitability by sub-category
- Profitability comparisons between high-discount and low-discount records
- Profit margin calculations by sub-category and discount level

For this analysis, records with discounts of **20% or more** are classified as high-discount records. Records with discounts below 20% are classified as low-discount records.

## Key Findings

### 1. Overall Business Performance

| KPI | Result |
|---|---:|
| Total Sales | $2,326,534.35 |
| Total Profit | $292,297 |
| Profit Margin | 12.6% |
| Total Orders | 5,111 |
| Total Records Analyzed | 10,194 |

The business generated approximately $2.33 million in sales and $292,297 in profit, resulting in an overall profit margin of 12.6%.

These metrics provide a high-level view of business performance. However, overall profitability can hide substantial differences between products and discount levels.

### 2. Discount Levels and Overall Profitability

The analysis compared 10,194 records across two discount groups.

| Metric | High Discount (≥20%) | Low Discount (<20%) |
|---|---:|---:|
| Number of Records | 5,121 | 5,073 |
| Average Discount | 30.6% | 0.3% |
| Total Sales | $1,138,699.55 | $1,187,834.81 |
| Total Profit | -$44,940.73 | $337,237.55 |
| Average Profit per Record | -$8.78 | $66.48 |

High-discount records generated approximately $1.14 million in sales but resulted in a total loss of approximately $44,941. In contrast, low-discount records generated approximately $337,238 in profit.

Despite having a similar number of records, the two groups showed substantially different profitability outcomes.

**Business implication:** Discounting should be evaluated based on its relationship with profit, not just sales revenue. Further analysis is needed to determine whether high discounts are justified by increased order volume or other business benefits.

### 3. Sub-Category Profitability Under High Discounts

Several sub-categories recorded substantial losses among high-discount records.

| Sub-Category | Total Profit |
|---|---:|
| Tables | -$31,088.13 |
| Machines | -$24,507.93 |
| Bookcases | -$11,126.78 |
| Binders | -$8,994.96 |
| Appliances | -$6,116.00 |

Tables and Machines experienced the largest losses in the high-discount group, followed by Bookcases and Binders.

However, several sub-categories remained profitable under high discounts.

| Sub-Category | Total Profit |
|---|---:|
| Copiers | $20,061.69 |
| Phones | $10,160.45 |
| Paper | $8,770.70 |
| Accessories | $6,647.38 |

Copiers generated the highest profit among the listed profitable sub-categories in the high-discount group. Accessories also remained profitable, with a reported profit margin of 13.56%, while Appliances had a negative profit margin of -24.26%.

**Business implication:** Loss-making sub-categories should be investigated individually. Differences in product costs, discount rates, selling prices, order sizes, and product mix may help explain why profitability varies.

### 4. Category, Regional, and Shipping Performance

The analysis also identified the following findings:

- **Technology** generated the highest sales among the three product categories.
- The **West region** had the highest total sales among the regions analyzed.
- **Standard Class** was the most frequently used shipping mode by order count.
- Profitability varied considerably across product sub-categories.

These findings demonstrate why sales volume alone is insufficient for evaluating business performance. Products and regions should also be assessed using profit and profit margin.

## Tableau Dashboard

The Tableau dashboard combines the analysis into a visual summary of sales performance and profitability.

### Dashboard Preview

![Sales Performance & Profitability Dashboard](<SALES PERFORMANCE & PROFITABILITY.png>)

### Dashboard Components

- **KPI Cards:** Total sales, total profit, profit margin, and total orders
- **Sales by Category:** Compares sales across Technology, Furniture, and Office Supplies
- **Profit Impact of High Discounts:** Highlights profitable and unprofitable sub-categories among high-discount records
- **Profit by Discount Level:** Compares total profit between high- and low-discount records
- **Discount Profitability Heatmap:** Compares sub-category profitability across high- and low-discount groups

The dashboard makes it easier to identify high-performing categories, spot loss-making sub-categories, and investigate the relationship between discount levels and profitability.

The packaged Tableau workbook is included in this repository for further exploration.

## Business Recommendations

Based on the analysis, the following actions warrant further investigation.

### 1. Review Discounting Practices

Investigate transactions with discounts of 20% or more to understand their relationship with profitability. Evaluate whether discounts increase order volume or revenue enough to justify their impact on profit.

### 2. Prioritize Loss-Making Sub-Categories

Begin with Tables, Machines, Bookcases, and Binders. Examine their costs, discount patterns, selling prices, and order characteristics to identify potential causes of losses.

### 3. Compare Discount Performance Within Products

Compare high- and low-discount records within the same sub-category. This provides a more meaningful comparison than examining discount groups only at the overall business level.

### 4. Focus on Profit Margin Alongside Sales

Evaluate products using total sales, total profit, and profit margin. High revenue does not necessarily mean a product contributes strongly to profitability.

### 5. Monitor Performance Regularly

Use the Tableau dashboard to monitor key performance indicators and identify changes in category performance, discount-related losses, and sub-category profitability.

**Analytical limitation:** These results demonstrate an association between discount levels and profitability. They do not establish that discounts alone caused the losses. Product mix, costs, order characteristics, and other factors may also influence the results.

## Repository Contents

- `sales_analysis.sql` — SQL queries used for sales and profitability analysis
- `sales_analytics.db` — SQLite database containing the analysis data
- `Sales_Performance_Profitability.twbx` — Packaged Tableau workbook containing the dashboard and visualizations
- `Sales_Performance_Dashboard.png` — Dashboard screenshot for previewing the analysis directly on GitHub
- `README.md` — Project documentation, findings, and recommendations

## How to Use

1. Clone or download this repository.
2. Open `sales_analytics.db` using DB Browser for SQLite.
3. Open `sales_analysis.sql` in the SQL editor.
4. Execute the queries individually to review the results.
5. Open the packaged Tableau workbook (`.twbx`) in Tableau Desktop to explore the dashboard and visualizations.

## Skills Demonstrated

- SQL querying and data aggregation
- Filtering, grouping, sorting, and conditional logic
- SQLite database management
- Sales and profitability analysis
- Discount analysis and profit margin calculations
- KPI development and business performance measurement
- Tableau dashboard development and data visualization
- Business insight development and recommendation writing
- GitHub documentation and version control

## Conclusion

This project demonstrates how SQL, SQLite, and Tableau can be used together to analyze sales performance, evaluate profitability, and translate data into actionable business insights.

The analysis identified substantial differences in profitability between high- and low-discount records, as well as specific sub-categories that warrant further investigation. Although high-discount records generated significant sales, they collectively produced a loss, while low-discount records generated positive profit.

By combining SQL-based analysis with an interactive Tableau dashboard, the project highlights the importance of evaluating profit and profit margin alongside sales revenue. The findings provide a basis for further investigation into discounting practices, product-level profitability, and pricing decisions.

Overall, the project demonstrates an end-to-end analytical workflow, from querying and interpreting data to communicating findings through business-focused visualizations and recommendations.
