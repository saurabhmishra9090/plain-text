---get all customers along with their orders but only those cutomers who have placed order--
select*
from customers 
inner join orders
on id=customer_id

select 
     c.id,
     c.first_name,
     c.country,
     o.order_id,
     o.order_date,
     o.sales
from customers as c 
inner join orders as o 
on c.id=o.customer_id


select *
from orders


-- get all customers along with thier orders including those without orders--
select 
      c.id,
      c. first_name,
      o.order_date,
      o.sales
from customers as c
left join orders as o
on c.id=o.customer_id



