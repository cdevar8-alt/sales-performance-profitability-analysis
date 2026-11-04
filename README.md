# Sales Performance & Profitability Analysis

## Project Overview

This project analyzes sales performance and profitability using SQL, SQLite, and Tableau. The objective is to evaluate product and regional performance, identify unprofitable sub-categories, and investigate how discount levels relate to profitability.

SQL was used to query, aggregate, and analyze the sales data, while Tableau was used to develop a dashboard that presents key performance indicators (KPIs), category-level sales, high-discount profitability, and a discount profitability heatmap.

The analysis aims to translate raw sales data into actionable business insights that support better pricing, discounting, and profitability decisions.

## Tools & Technologies

- **SQL (SQLite):** Data aggregation, filtering, grouping, sorting, conditional logic, and profitability analysis
- **DB Browser for SQLite:** Database management and SQL query execution
- **Tableau Desktop:** Dashboard development, KPI visualization, bar charts, and profitability heatmap
- **GitHub:** Project documentation and version control

## Business Questions

1. What are the overall sales, total profit, and number of orders?
2. Which product categories generate the highest sales and profit?
3. Which regions contribute the most sales?
4. Which sub-categories are the most and least profitable?
5. How do shipping modes compare in order volume, sales, and profit?
6. How do high-discount records compare with low-discount records in terms of sales and profitability?
7. Which product sub-categories experience the greatest losses under high discounts?
8. How does profitability differ between high- and low-discount records within each sub-category?

## SQL Analysis

The SQL analysis includes:

- Overall sales, profit, and order metrics
- Sales and profit comparisons by product category and region
- Sub-category profitability analysis
- Order volume and performance by shipping mode
- Average discounts and profitability by sub-category
- Profitability comparisons between high-discount and low-discount records
- Profit margin calculations by sub-category and discount level

High-discount records are defined as records with a discount of **20% or more**. Low-discount records have discounts below 20%.

## Key Findings

### 1. Overall Business Performance

| KPI | Result |
|---|---:|
| Total Sales | $2,326,534.35 |
| Total Profit | $292,297 |
| Profit Margin | 12.6% |
| Total Orders | 5,111 |

The business generated approximately $2.33 million in sales and $292,297 in profit, with an overall profit margin of 12.6%.

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

Tables and Machines experienced the largest losses in the high-discount group, followed by Bookcases.

Appliances also showed a negative profit margin of **-24.26%** in the analysis.

However, some sub-categories remained profitable under high discounts:

| Sub-Category | Total Profit |
|---|---:|
| Copiers | $20,062 |
| Phones | $10,160 |
| Paper | $8,771 |
| Accessories | $6,647 |

Copiers generated the highest profit among the listed profitable sub-categories in the high-discount group. Accessories remained profitable but had a lower reported profit margin of 13.56%.

**Business implication:** Loss-making sub-categories should be investigated individually. Differences in product costs, discount rates, order sizes, and product mix may help explain why profitability varies.

### 4. Existing Sales Performance Findings

- **Technology** generated the highest sales among the three product categories.
- The **West region** had the highest total sales among the regions analyzed.
- **Standard Class** was the most frequently used shipping mode by order count.
- Profitability varied considerably across product sub-categories.

These findings demonstrate why sales volume alone is insufficient for evaluating business performance. Products and regions should also be assessed using profit and profit margin.

## Tableau Dashboard

The Tableau dashboard brings the analysis together into an interactive visual summary.

The dashboard includes:

- **KPI cards:** Total sales, total profit, profit margin, and total orders
- **Sales by Category:** Compares sales across Technology, Furniture, and Office Supplies
- **Profit Impact of High Discounts:** Highlights profitable and unprofitable sub-categories among high-discount records
- **Profit by Discount Level:** Compares total profit between high- and low-discount records
- **Discount Profitability Heatmap:** Compares sub-category profitability across high- and low-discount groups

The visualizations make it easier to identify high-performing categories, spot loss-making sub-categories, and investigate the relationship between discount levels and profitability.

## Business Recommendations

Based on the analysis, the following actions warrant further investigation.

### 1. Review Discounting Practices

Investigate transactions with discounts of 20% or more to understand their relationship with profitability. Evaluate whether discounts increase order volume or revenue enough to justify their impact on profit.

### 2. Prioritize Loss-Making Sub-Categories

Begin with Tables, Machines, Bookcases, and Binders. Examine their costs, discount patterns, selling prices, and order characteristics to identify potential causes of losses.

### 3. Compare Discount Performance Within Products

Compare high- and low-discount records within the same sub-category. This provides a more meaningful comparison than examining discount groups only at the overall business level.

### 4. Focus on Profit Margin Alongside Sales

Evaluate products using total sales, total profit, and profit margin. High revenue does not necessarily mean a product is contributing strongly to profitability.

### 5. Monitor Performance Regularly

Use the Tableau dashboard to monitor key performance indicators and identify changes in category performance, discount-related losses, and sub-category profitability.

**Analytical limitation:** These results demonstrate an association between discount levels and profitability. They do not establish that discounts alone caused the losses. Product mix, costs, order characteristics, and other factors may also influence the results.

## Repository Contents

- `sales_analysis.sql` — SQL queries used for sales and profitability analysis
- `sales_analytics.db` — SQLite database containing the analysis data

The Tableau workbook can also be included in the repository if saved and prepared for sharing.

## How to Use

1. Clone or download this repository.
2. Open `sales_analytics.db` using DB Browser for SQLite.
3. Open `sales_analysis.sql` in the SQL editor.
4. Execute the queries individually to review the results.
5. Open the Tableau workbook, if included, to explore the dashboard and visualizations.

## Skills Demonstrated

- SQL querying and data aggregation
- Filtering, grouping, sorting, and conditional logic
- SQLite database management
- Sales and profitability analysis
- Discount analysis and profit margin calculations
- Tableau dashboard development and data visualization
- Business insight development and recommendation writing
- GitHub project documentation

## Conclusion

This project demonstrates how SQL and Tableau can be combined to analyze sales performance and profitability. The findings highlight substantial differences in profitability between discount groups and identify sub-categories that warrant further investigation.

By connecting quantitative analysis with business recommendations, the project demonstrates an analytical workflow that moves from querying data to identifying patterns and supporting data-informed decisions.
