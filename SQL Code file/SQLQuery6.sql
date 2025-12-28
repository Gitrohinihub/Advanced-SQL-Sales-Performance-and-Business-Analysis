
-- group customers into three segments based on their opening behaviours :

with customer_spending as (
select c.customer_key , sum(f.sales_amount) as total_spending , 
min(order_date) as first_order,
max(order_date) as last_order,
datediff(month, min(order_date), max(order_date)) as lifespan
from [gold.fact_sales] f
left join [gold.dim_customers] c
on c.customer_key = f.customer_key
group by c.customer_key 
)
select customer_segments , count(customer_key) as total_customers 
from 
(
select customer_key,
case when lifespan >= 12 and total_spending >5000 then 'VIP'
	 when lifespan >= 12 and total_spending <= 5000 then 'Regular'
	 else 'New'
end customer_segments 
from customer_spending 
) t
group by customer_segments
order by total_customers  desc
