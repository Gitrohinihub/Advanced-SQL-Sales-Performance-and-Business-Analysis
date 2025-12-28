# 📊 Advanced SQL Business Analysis Project

## 📌 Project Overview
This project demonstrates how **SQL can be used to solve real business problems** by asking meaningful business questions and translating them into analytical SQL queries.

The analysis is built using **three core tables** — `customer`, `sales`, and `products`.  
Using these tables, multiple business-focused SQL tasks were performed, followed by the creation of **Customer** and **Product analytical reports** for reporting and visualization purposes.

---

## 🎯 Customer & Product Performance Analysis Using SQL Case Study :
A company wants to understand its sales performance, customer behavior, and product contribution to make better business decisions. The objective is to analyze historical sales data and answer key business questions related to trends, growth, performance, contribution, and segmentation using SQL.


🔍 What Business Areas Does the Case Study Cover?
Your case study solves problems in **five business areas**:

---
### 🔹 Task 1: Trend Analysis (Change Over Time)
**Business Question:**  
How does sales performance change over time?

**SQL Analysis:**
- Analyzed sales by **year and month**
- Identified sales trends over time

**Business Value:**  
Helps understand seasonal patterns and long-term growth trends.

![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/1ef4b3bfbe6efb8abd98cac49975f94e1af2bf53/SqL%20code%20SS/Task%201st.png
)

### 🔹 Task 2: Cumulative Analysis (Running Total)
**Business Question:**  
How do sales accumulate over time?

**SQL Analysis:**
- Calculated **monthly total sales**
- Computed **running total of sales by year**

**Business Value:**  
Tracks business growth and progress toward annual targets.

![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/984217c200f69d1eae248bedcbdd4be3022d81a2/SqL%20code%20SS/task%202nd.png
)

### 🔹 Task 3: Performance Analysis (Year-over-Year)
**Business Question:**  
How does the current year's product performance compare with the previous year's?

**SQL Analysis:**
- Compared **current year sales vs previous year sales**
- Performance formula:

**Business Value:**  
Identifies improving, declining, and underperforming products.

![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/984217c200f69d1eae248bedcbdd4be3022d81a2/SqL%20code%20SS/Task%203rd.png
)

### 🔹 Task 4: (Part-to-Whole)Contribution Analysis
**Business Question:**  
Which categories contribute the most to overall sales?

**SQL Analysis:**
- Calculated contribution percentage:
- 
**Business Value:**  
Highlights high-impact product categories.

![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/984217c200f69d1eae248bedcbdd4be3022d81a2/SqL%20code%20SS/Task%204.png
)

### 🔹 Task 5: Data Segmentation
**Business Questions:**
- How are customers distributed by age?
- How are products distributed across cost ranges?

**SQL Analysis:**
- Segmented **customers by age groups**
- Segmented **products into cost ranges** and counted products per segment

**Business Value:**  
Supports targeted marketing, pricing, and product strategy.

![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/984217c200f69d1eae248bedcbdd4be3022d81a2/SqL%20code%20SS/Task%205.png
)
![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/984217c200f69d1eae248bedcbdd4be3022d81a2/SqL%20code%20SS/Task%206.png
)
## 📑 Analytical Reports Created (SQL Views)
After solving the business problems, two analytical reports were designed using SQL.

---

## 👤 Customer Report

### Purpose
Consolidates **key customer metrics and behaviours** to analyze customer value and engagement.

### Highlights
- Gathers essential customer attributes such as names, ages, and transaction details
- Segments customers into **VIP, Regular, and New**
- Segments customers by age group

### Aggregated Customer Metrics
- Total orders  
- Total sales  
- Total quantity purchased  
- Total products purchased  
- Customer lifespan (in months)

### Key Customer KPIs
- Recency (months since last order)
- Average Order Value (AOV)
- Average Monthly Spend

---

## 📦 Product Report

### Purpose
Consolidates **key product metrics and performance behaviour** to evaluate product contribution and lifecycle.

### Highlights
- Gathers product attributes such as product name, category, subcategory, and cost
- Segments products into:
  - High Performers
  - Mid-Range Performers
  - Low Performers

### Aggregated Product Metrics
- Total orders  
- Total sales (revenue)  
- Total quantity sold  
- Total unique customers  
- Product lifespan (in months)

### Key Product KPIs
- Recency (months since last sale)
- Average Order Revenue (AOR)
- Average Monthly Revenue

---

## 🛠️ Tools & Skills Used
- SQL
  - Aggregations (SUM, COUNT)
  - Window functions
  - Date-based analysis (Year, Month)
  - CASE statements for segmentation
- Business & Analytical Thinking

---

## 📈 Future Enhancements
- To interact with a report :![Advanced SQL Business Analysis Project](https://app.powerbi.com/links/cOIntQc3bN?ctid=c9b30289-5c60-41dc-85c2-d8862dea8925&pbi_source=linkShare&bookmarkGuid=2fb73737-a03f-403d-b78a-0b8aa0bbb4a2)
- ![](https://github.com/Gitrohinihub/Advanced-SQL-Sales-Performance-and-Business-Analysis/blob/d49f95c4655a74d388e09a52e277991d3ec38e02/SqL%20code%20SS/customer%20and%20product%20report%20.png)






