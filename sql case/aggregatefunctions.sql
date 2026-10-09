select
     count(*) as total_orders,
     sum(sales)as  total_sales,
     avg(sales) as avg_sales,
     max(sales) as highest_sales,
     min(sales) as lowest_sales
from sales.orders
