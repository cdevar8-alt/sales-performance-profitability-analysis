# Sales Performance & Profitability Analysis

## Project Overview

This project analyzes sales performance and profitability using SQL and SQLite, with Tableau planned for data visualization. The objective is to identify sales trends, evaluate product and regional performance, and investigate how discount levels relate to profitability to support data-driven business decisions.

## Tools & Technologies

- **SQL (SQLite):** Data aggregation, filtering, grouping, sorting, conditional logic, and profitability analysis
- **DB Browser for SQLite:** Database management and SQL query execution
- **Tableau:** Planned data visualization and interactive dashboard development

## Business Questions

1. What are the overall sales, total profit, and number of orders?
2. Which product categories generate the highest sales and profit?
3. Which regions contribute the most sales?
4. Which sub-categories are the most and least profitable?
5. How do shipping modes compare in order volume, sales, and profit?
6. How do high-discount records compare with low-discount records in terms of sales and profitability?
7. Which product sub-categories experience the greatest losses under high discounts?

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

### 1. Discount Levels and Overall Profitability

The analysis compared 10,194 records across two discount groups.

| Metric | High Discount | Low Discount |
|---|---:|---:|
| Number of records | 5,121 | 5,073 |
| Average discount | 30.6% | 0.3% |
| Total sales | $1,138,699.55 | $1,187,834.81 |
| Total profit | -$44,940.73 | $337,237.55 |
| Average profit per record | -$8.78 | $66.48 |

High-discount records generated substantial sales but resulted in an overall loss. Low-discount records generated a positive total profit despite having a similar number of records.

### 2. Sub-Category Profitability Under High Discounts

Among the sub-categories in the high-discount results:

| Sub-category | Total Profit |
|---|---:|
| Tables | -$31,088.13 |
| Machines | -$24,507.93 |
| Bookcases | -$11,126.78 |

Tables, Machines, and Bookcases recorded the largest total losses in the reported high-discount results. Appliances also showed a negative profit margin of **-24.26%**.

However, some sub-categories remained profitable under high discounts. Copiers achieved a profit margin of 27.45%, while Accessories achieved 13.56%.

### 3. Existing Sales Performance Findings

- Technology generated the highest sales among the product categories.
- The West region had the highest total sales among the regions analyzed.
- Standard Class was the most frequently used shipping mode by order count.
- Profitability varied across product sub-categories.

## Business Recommendations

Based on the analysis, the following actions warrant further investigation:

1. **Review discounting practices:** Investigate whether high discounts are reducing profitability for specific products.
2. **Prioritize loss-making sub-categories:** Examine Tables, Machines, Bookcases, and Appliances to understand their cost structures and discount patterns.
3. **Compare discount performance within products:** Evaluate high- and low-discount profitability for the same sub-category before recommending changes to discount policies.
4. **Balance sales growth with profitability:** Assess product performance using sales, total profit, and profit margin rather than sales alone.

These findings show an association between discount levels and profitability in the analyzed data. They do not, by themselves, establish that discounts caused the losses.

## Repository Contents

- `sales_analysis.sql` — SQL queries used for the analysis
- `sales_analytics.db` — SQLite database containing the analysis data

## How to Use

1. Clone or download this repository.
2. Open `sales_analytics.db` using DB Browser for SQLite.
3. Open `sales_analysis.sql` in the SQL editor.
4. Execute the queries individually to review the results.
5. Use the results to develop visualizations and an interactive dashboard in Tableau.

## Skills Demonstrated

SQL querying, data aggregation, conditional logic, data analysis, profitability analysis, profit margin calculations, database management, and business recommendation development.

---

*This project demonstrates practical business analytics skills by translating SQL query results into business insights and recommendations.*
