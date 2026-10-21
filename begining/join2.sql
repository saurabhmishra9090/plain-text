----------------------full join--------
SELECT 
      C.ID,
      C.FIRST_NAME,
      C.SCORE,
      O.ORDER_DATE,
      O.SALES
FROM CUSTOMERS AS C
full JOIN ORDERS as o
ON C.ID=O.CUSTOMER_ID
-----------------------advanced sql joins----------

---------------------left anti join-----------

select*
from customers as c
left join orders as o
on c.id=o.customer_id
where o.customer_id is null
    -----right anti join -----

    select *
    from customers as c
    right join orders as o
    on c.id=o.customer_id
    where o.customer_id is null



    -------full anti join----
    --fins customers without orders and orders without customers--------

    select*
    from customers as c
    full join orders as o 
    on c.id=o.customer_id
    where c.id is null 

    
        select*
    from orders
    select*
    from customers
    ---cross join---
    select *
    from customers 
    cross join orders