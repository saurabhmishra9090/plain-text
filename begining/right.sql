--return all rows from right and matching rows from left--
select 
      c.first_name,
      c.country,
      o.order_date,
      o.sales
from customers as c
right join orders as o
on c.id=o.customer_id


select 
      c.first_name,
      c.country,
      o.order_date,
      o.sales
      from
           orders as o
right join  customers as c 
on c.id=o.customer_id