
--which category contribute the most of over all sales 


with category_sales as (
select category, sum(sales_amount) as total_sales
from [gold.fact_sales] s 
left join [gold.dim_products] p 
on s.product_key = p.product_key 
group by category
)
select top 1 category , total_sales, sum(total_sales) over() overall_Sales,
concat(round((cast(total_sales as float)/sum(total_sales) over())*100,2),'%') as percentage_of_total
from category_sales
order by  total_sales desc
