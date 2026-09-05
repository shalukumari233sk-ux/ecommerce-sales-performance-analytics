\# E-commerce Business Analytics using SQL



\## Project Overview



A SQL-based business analytics project developed using Microsoft SQL Server and SQL Server Management Studio (SSMS).



The project analyzes e-commerce customer, product, order, and order-item data to evaluate sales performance, profitability, customer behavior, regional performance, and operational KPIs.



\---



\## Business Problem



Management needs better visibility into sales performance and customer behavior to support business decisions.



The analysis focuses on:



\- Revenue and profitability

\- Product and category performance

\- Customer contribution

\- Regional performance

\- Monthly sales trends

\- Order-status performance

\- Payment methods

\- Discount patterns

\- Repeat customers



\---



\## Project Objectives



1\. Measure overall sales and profitability.

2\. Identify high-performing products and categories.

3\. Identify high-value and repeat customers.

4\. Analyze regional sales performance.

5\. Evaluate monthly revenue trends.

6\. Monitor order-status performance.

7\. Analyze payment-method usage.

8\. Review discount-level order outcomes.

9\. Perform basic data-quality validation.



\---



\## Tools \& Technologies



\- Microsoft SQL Server

\- SQL Server Management Studio (SSMS)

\- SQL



\---



\## Database Structure



The project contains four related tables:



```text

Customers

\\\\\\\&#x20;   |

\\\\\\\&#x20;   | customer\\\\\\\\\\\\\\\_id

\\\\\\\&#x20;   v

Orders

\\\\\\\&#x20;   |

\\\\\\\&#x20;   | order\\\\\\\\\\\\\\\_id

\\\\\\\&#x20;   v

Order\\\\\\\\\\\\\\\_Items

\\\\\\\&#x20;   |

\\\\\\\&#x20;   | product\\\\\\\\\\\\\\\_id

\\\\\\\&#x20;   v

Products





Tables



customers



Contains customer information such as customer name, location, state, and signup date.



products



Contains product name, category, selling price, and cost price.



orders



Contains order date, customer, order status, payment method, and discount.



order\\\\\\\\\\\\\\\_items



Contains products and quantities associated with each order.



Dataset

| Metric      | Count |

| ----------- | ----: |

| Customers   |    20 |

| Products    |    15 |

| Orders      |    40 |

| Order Items |    51 |



Executive KPI Summary

| KPI                 |     Result |

| ------------------- | ---------: |

| Total Customers     |         20 |

| Total Products      |         15 |

| Total Orders        |         40 |

| Completed Orders    |         30 |

| Gross Revenue       | ₹10,88,400 |

| Total Cost          |  ₹8,39,750 |

| Gross Profit        |  ₹2,48,650 |

| Gross Margin        |     22.84% |

| Average Order Value |    ₹36,280 |

| Cancellation Rate   |        10% |

| Return Rate         |       7.5% |

| Pending Rate        |       7.5% |





\\\\\\\*\\\\\\\*Analysis Performed\\\\\\\*\\\\\\\*



1\\\\\\\\. Product Performance



Analyzed products based on:

\\\\\\\* Units sold
\\\\\\\* Revenue
\\\\\\\* Gross profit



2\\\\\\\\. Category Performance



Compared product categories based on:

\\\\\\\* Units sold
\\\\\\\* Revenue
\\\\\\\* Gross profit



3\\\\\\\\. Customer Performance



Ranked customers based on:

\\\\\\\* Completed orders
\\\\\\\* Revenue
\\\\\\\* Gross profit contribution



4\\\\\\\\. Regional Performance



Analyzed state-level:

\\\\\\\* Completed orders
\\\\\\\* Revenue
\\\\\\\* Gross profit



5\\\\\\\\. Monthly Sales Trend



Analyzed monthly:

\\\\\\\* Revenue
\\\\\\\* Gross profit



6\\\\\\\\. Operational Performance



Analyzed:

\\\\\\\* Completed orders
\\\\\\\* Cancelled orders
\\\\\\\* Returned orders
\\\\\\\* Pending orders



7\\\\\\\\. Payment Analysis

Compared payment methods based on completed orders.



8\\\\\\\\. Discount Analysis



Compared discount levels against:

\\\\\\\* Completed orders
\\\\\\\* Cancelled orders
\\\\\\\* Returned orders
\\\\\\\* Pending orders
\\\\\\\* Completion rate



9\\\\\\\\. Customer Retention

Identified customers with more than one completed order.



\\\\\\\*\\\\\\\*SQL Techniques Used\\\\\\\*\\\\\\\*

\\\\\\\* SELECT
\\\\\\\* WHERE
\\\\\\\* ORDER BY
\\\\\\\* GROUP BY
\\\\\\\* DISTINCT
\\\\\\\* COUNT
\\\\\\\* SUM
\\\\\\\* AVG
\\\\\\\* INNER JOIN
\\\\\\\* LEFT JOIN
\\\\\\\* CASE
\\\\\\\* HAVING
\\\\\\\* CTEs
\\\\\\\* Window Functions
\\\\\\\* Data Quality Checks





\\\\\\\*\\\\\\\*Key Business Insights\\\\\\\*\\\\\\\*

\\\\\\\* Completed orders generated ₹10.88 lakh in gross revenue.
\\\\\\\* Gross profit was ₹2.49 lakh with a 22.84% gross margin.
\\\\\\\* Average order value was ₹36,280.
\\\\\\\* 75% of orders were completed.
\\\\\\\* 10% of orders were cancelled.
\\\\\\\* 7.5% of orders were returned.
\\\\\\\* 7.5% of orders were pending.
\\\\\\\* Product, category, customer, and regional analysis were performed to identify performance differences.





\\\\\\\*\\\\\\\*Business Recommendations\\\\\\\*\\\\\\\*



\\\\\\\*\\\\\\\*Product \\\\\\\\\\\\\\\& Inventory\\\\\\\*\\\\\\\*

Prioritize products generating strong revenue and gross profit for inventory and commercial planning.



\\\\\\\*\\\\\\\*Customer Retention\\\\\\\*\\\\\\\*

Identify high-value and repeat customers for targeted retention initiatives.



\\\\\\\*\\\\\\\*Operational Monitoring\\\\\\\*\\\\\\\*

Monitor cancelled, returned, and pending orders as exception KPIs and investigate recurring causes.



\\\\\\\*\\\\\\\*Regional Strategy\\\\\\\*\\\\\\\*

Use state-level performance to identify stronger markets and areas requiring improvement.



\\\\\\\*\\\\\\\*Profitability Management\\\\\\\*\\\\\\\*

Evaluate gross profit and margin alongside revenue when making product and category decisions.



\\\\\\\*\\\\\\\*Discount Strategy\\\\\\\*\\\\\\\*

Review discount levels against order outcomes before increasing promotional intensity.





\\\\\\\*\\\\\\\*Data Quality\\\\\\\*\\\\\\\*



The dataset was validated using SQL checks for:

\\\\\\\* Product selling price versus cost price
\\\\\\\* Orders referencing valid customers
\\\\\\\* Order items referencing valid products
\\\\\\\* Order items referencing valid orders



All validation queries returned 0 rows, indicating no data-quality exceptions were identified in the current dataset.





\\\\\\\*\\\\\\\*Project Structure\\\\\\\*\\\\\\\*



Project/

│

├── README.md

│

├── ecommerce\\\\\\\\\\\\\\\_business\\\\\\\\\\\\\\\_analysis.sql

│

├── database/

│   ├── ecommerce\\\\\\\\\\\\\\\_database.sql

│   └── ecommerce\\\\\\\\\\\\\\\_sample\\\\\\\\\\\\\\\_data.sql

│

├── results/

│   ├── executive\\\\\\\\\\\\\\\_kpis.csv

│   ├── product\\\\\\\\\\\\\\\_performance.csv

│   ├── category\\\\\\\\\\\\\\\_performance.csv

│   ├── customer\\\\\\\\\\\\\\\_performance.csv

│   ├── state\\\\\\\\\\\\\\\_performance.csv

│   ├── monthly\\\\\\\\\\\\\\\_sales\\\\\\\\\\\\\\\_trend.csv

│   ├── order\\\\\\\\\\\\\\\_status.csv

│   ├── payment\\\\\\\\\\\\\\\_method.csv

│   ├── discount\\\\\\\\\\\\\\\_analysis.csv

│   └── repeat\\\\\\\\\\\\\\\_customers.csv

│

├── insights/

│   └── business\\\\\\\\\\\\\\\_insights.md

│

└── screenshots/





\\\\\\\*\\\\\\\*How to Reproduce the Analysis\\\\\\\*\\\\\\\*

1. Open SQL Server Management Studio.
2. Run database/ecommerce\\\\\\\\\\\\\\\_database.sql.
3. Run database/ecommerce\\\\\\\\\\\\\\\_sample\\\\\\\\\\\\\\\_data.sql.
4. Open ecommerce\\\\\\\\\\\\\\\_business\\\\\\\\\\\\\\\_analysis.sql.
5. Execute the analysis queries.
6. Review the result sets.
7. Compare the results with the CSV files in the results folder.





\\\\\\\*\\\\\\\*Resume Project Description\\\\\\\*\\\\\\\*

E-commerce Business Analytics | SQL Server



Analyzed customer, product, order, and transaction data using SQL Server to evaluate revenue, profitability, customer behavior, product performance, regional trends, and operational KPIs; applied joins, aggregations, filtering, grouping, CTEs, and analytical SQL techniques to generate business insights and recommendations.





\\\*\\\*\\\\\\\*\\\\\\\*Project Note\\\\\\\*\\\\\\\*\\\*\\\*
This project uses a synthetic e-commerce dataset created for portfolio and learning purposes.

**Author**
**Shalu Kumari**







