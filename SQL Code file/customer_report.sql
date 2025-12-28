
/*
===============================================================================
Product Report
===============================================================================
Purpose:
    - This report consolidates key product metrics and behaviors.

Highlights:
    1. Gathers essential fields such as product name, category, subcategory, and cost.
    2. Segments products by revenue to identify High-Performers, Mid-Range, or Low-Performers.
    3. Aggregates product-level metrics:
       - total orders
       - total sales
       - total quantity sold
       - total customers (unique)
       - lifespan (in months)
    4. Calculates valuable KPIs:
       - recency (months since last sale)
       - average order revenue (AOR)
       - average monthly revenue
===============================================================================
*/
-- =============================================================================
-- Create Report: gold.report_products
-- =============================================================================
CREATE VIEW report_customers as
with base_query as(

--1) base query : retrives core columns from the table 

select f.order_number, f.product_key, f.sales_amount,
f.quantity, f.order_date, c.customer_key,
c.customer_number,
datediff(year,c.birthdate ,getdate()) as age ,
concat(c.first_name,' ',c.last_name) as customer_name 
from [dbo].[gold.fact_sales] f
left join [gold.dim_customers] c
on f.customer_key = c.customer_key
where order_date is not null
),

customer_aggregations as (
--cusyomer aggregations : summarize key metrics at the custome level 
select 
customer_key,
customer_number,
customer_name ,
age,
count(distinct order_number) as total_orders,
sum(sales_amount) as total_sales ,
sum(quantity) as total_quantity,
count(distinct product_key) as total_products,
max(order_date) as last_order_date,
datediff(month, min(order_date), max(order_date)) as lifespan
from base_query
group by customer_key,
	customer_number,
	customer_name ,
	age
)
--3) Final Query: Combines all product results into one output
select 
customer_key,
customer_number,
customer_name ,
age,
case 
	 when age < 20 then 'under 20'
	 when age between 20 and 29 then '20-29'
	 when age between 30 and 39 then '30-39'
	 when age between 40 and 49 then '40-49'
	 else '50 and above'
end as age_group ,
case 
	 when lifespan >= 12 and total_sales >5000 then 'VIP'
	 when lifespan >= 12 and total_sales <= 5000 then 'Regular'
	 else 'New'
end as customer_segments,
last_order_date,
datediff(month, last_order_date, getdate()) as recency,
total_orders,
total_sales ,
total_quantity,
total_products,
lifespan,
--AVO average order value 
case when total_sales =0 then 0
	else total_sales / total_orders 
end as avg_order_value,
--average monthly spending 
case when lifespan =0 then total_sales
	else lifespan / total_sales
end as avg_monthly_spending
from customer_aggregations