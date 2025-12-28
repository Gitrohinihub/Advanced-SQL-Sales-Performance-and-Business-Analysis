
/* Analyze  sales performance over time , change over time by year or month 
SELECT * FROM [dbo].[gold.fact_sales]*/

SELECT year(order_date) as order_year , sum(sales_amount ) as total_sales,
count( distinct customer_key) as total_customers, sum(quantity) as total_quantity
from [dbo].[gold.fact_sales]
where order_date is not null
group by year(order_date)
order by year(order_date)  

SELECT month(order_date) as order_year , sum(sales_amount ) as total_sales,
count( distinct customer_key) as total_customers, sum(quantity) as total_quantity
from [dbo].[gold.fact_sales]
where order_date is not null
group by month(order_date)
order by month(order_date) 

SELECT datetrunc(YEAR,order_date) as order_year , sum(sales_amount ) as total_sales,
count( distinct customer_key) as total_customers, sum(quantity) as total_quantity
from [dbo].[gold.fact_sales]
where order_date is not null
group by datetrunc(YEAR,order_date)
order by datetrunc(YEAR,order_date) 



