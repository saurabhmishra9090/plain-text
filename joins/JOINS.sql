 -- retireve data from two table without joining --

select *
 from customers ;
 select *
  from orders;
  --- get all customers along with thier orders but only for those cistomers who have placed orders--
  -- here we use inner join cause we have to find out the matching values--

  select*
  from customers
  inner join orders 
  on id= customer_id
  -- this gives all the data so what if i want specific data --
  select 
       id,
	   first_name, 
	   order_date,
	   sales
from customers
inner join orders 
on id=customer_id

/* always specify the table of column */


select 
		customers.id,
		customers.first_name,
		orders.order_date,
		orders.sales
from customers
inner join orders
on customers.id=orders.customer_id

/* above is a long methid to make it short we have */

select 
		c.id,
		c.first_name,
		o.order_date,
		o.sales
from customers as c
inner join orders as o
on c.id=o.customer_id

/* ;LEFT JOIN 
 GET ALL CUSTOMERRS ALONG WITH THEIR ORDERS */


 SELECT*
  FROM CUSTOMERS
  JOIN ORDERS
  ON ID=CUSTOMER_ID

  /*  GET ALL CUSTOMERRS ALONG WITH THEIR ORDERS INCLUDING THOSE WITHOUT ORDERS **/
  

  SELECT
        C.ID,
		C.FIRST_NAME,
		O.ORDER_ID,
		O.SALES
  FROM CUSTOMERS AS C
  left join ORDERS AS O
  ON C.ID =O.CUSTOMER_ID 

  /* RIGHT JOIN*/
  -- GET ALL ORDER ALONG WITH THEIR CUSTOMERS INCLUDING orders with no matching customers --

  select 
		c.id,
		c.first_name,
		o.order_id,
		o.sales 
 from customers as c
 right join orders as o
 on c.id=o.customer_id 