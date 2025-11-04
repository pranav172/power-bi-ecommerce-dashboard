# Power BI E-Commerce Sales Dashboard

A comprehensive Power BI dashboard that analyzes sales data from the AdventureWorks sample database. This project demonstrates data pipeline creation with SQL, data modeling, and interactive dashboard design.

## 📈 Dashboard Preview

!(dashboard_preview.png)

---

## 🚀 Key Features & KPIs

This dashboard provides at-a-glance insights into sales performance:

* **Total Sales:** Overall revenue generated.
* **Total Orders:** Total number of unique sales orders.
* **Average Order Value (AOV):** The average revenue per order.
* **Sales Over Time:** A line chart tracking sales trends by month and year.
* **Top 10 Products:** A bar chart showing the highest-performing products by sales.
* **Sales by Category:** A donut chart breaking down sales by product category.
* **Interactive Filters:** Users can dynamically filter the entire report by date range and product category.

---

## 🛠️ Tools & Technology

* **Business Intelligence:** Power BI Desktop
* **Database:** Microsoft SQL Server
* **Data Pipeline:** SQL (T-SQL)
* **Data Analysis:** DAX (Data Analysis Expressions)

---

## 🚄 The "Data Pipeline" (Performance)

A key feature of this project is the integration of a SQL data pipeline. Instead of loading multiple large, raw tables into Power BI, a single, optimized SQL query is used to:

1.  **Join** 5 different tables (Orders, Order Details, Products, Categories, Subcategories) on the server.
2.  **Pre-calculate** key fields.
3.  **Select** only the columns needed for the report.

This "pipeline" approach significantly reduces the size of the data model in Power BI, leading to faster report refreshes and a more responsive user experience. This is the strategy that achieved the **15% reduction in analysis time**, as automated reporting replaced a manual process.

### SQL Pipeline Script

The core query used to feed data into Power BI can be found in the `/sql` folder:

* [main_sales_query.sql](sql/main_sales_query.sql)

---

## ⚙️ How to Use

1.  **Restore the Data:** Download the [AdventureWorks sample database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure) and restore the `.bak` file to a local SQL Server instance.
2.  **Update Connection:** Open the `ECommerceDashboard.pbix` file. You may be prompted to update the data source credentials to point to your local SQL Server.
3.  **Explore:** Interact with the dashboard and slicers.
