select 
      orderid,
      orderdate,
      productid,
      sum(sales) over (partition by productid ) totalsalesproduct
from sales.orders

---concept of partion by --
-- find the total sales across all orders--
 select 
       orderid,
       orderdate,
       productid,
       sum(sales) over() totalsales
from sales.orders
/*find the total sales by prdouct also total sales acroos alll orders*/

select
      orderid,
      orderdate,
      productid,
      sum(sales) over() totalsales,
      sum(sales)over(partition by productid) totalsalesbyproduct
from sales.orders

--finding for combinations--
select
      orderid,
      orderdate,
      productid,
      orderstatus,
      sales,
      sum(sales) over() totalsales,
      sum(sales)over(partition by productid) totalsalesbyproduct,
         sum(sales)over(partition by productid,orderstatus) totalsalesbyproduct

from sales.orders
