
/* Analyze the yearly performance of products by comparing their sales 
to both the average sales performance of the product and the 
previous year's sales */

select * from 
[gold.fact_sales]

with yearly_product_data as
(
select year(f.order_date) as order_year, p.product_name ,
sum(f.sales_amount) as current_sales
from 
[gold.fact_sales] f
left join [gold.dim_products] p
on f.product_key = p.product_key
where f.order_date is not null
group by year(f.order_date),  p.product_name
) 
select order_year, product_name , current_sales,
avg(current_sales) over(partition by product_name) as avg_sales ,
current_sales - avg(current_sales) over(partition by product_name)  as diff_avg,
case when current_sales - avg(current_sales) over(partition by product_name) > 0 then 'Above_avg'
	 when current_sales - avg(current_sales) over(partition by product_name) < 0 then 'below_avg'
	 else 'average' 
end avg_change ,
-- year -over - year - analysis if you want to do it in month by month just replace year with month 
lag(current_sales) over(partition by product_name order by order_year) as py_sales,
current_sales - lag(current_sales) over(partition by product_name order by order_year) as diff_py,
case when current_sales - lag(current_sales) over(partition by product_name order by order_year) > 0 then 'inc'
	 when current_sales - lag(current_sales) over(partition by product_name order by order_year) < 0 then 'dec'
	 else 'no change' 
end py_change 
from 
yearly_product_data
order by  product_name, order_year
