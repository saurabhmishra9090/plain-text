---rownumbe---
-- rank the orders based in their sales from highest to lowest --
 select
       orderid,
       productid,
       sales,
       row_number()over(order by sales desc)sale_rankrow
 from sales.orders 

 --rank()fucntion--
 --rank the orders based on thier sales from highest to lowest--
  select
       orderid,
       productid,
       sales,
       rank()over(order by sales desc)sale_rankrow
 from sales.orders 
 --denserank--
  select
       orderid,
       productid,
       sales,
       dense_rank ()over(order by sales desc)sale_rankrow
 from sales.orders 
 ---- all at thesame time --
   select
       orderid,
       productid,
       sales,
       dense_rank ()over(order by sales desc)sale_rankrow1,
         rank()over(order by sales desc)sale_rankrow2,
       row_number()over(order by sales desc)sale_rankrow3
 from sales.orders 


 ---usecases of row_number---
 -- top n  analysis--

 ---find the top highest sales from each product-
 select*
 from(
 select 
       orderid,
       productid,
       sales,
       row_number()over(partition by productid order by sales desc)rankbyproduct
       from sales.orders
       )t where rankbyproduct=1
       --n-tile--

    select
          orderid,
          sales,
          ntile(1) over(order by sales desc ) onebucket,
          ntile(2) over(order by sales desc ) onebucket,
           ntile(4) over(order by sales desc ) onebucket,
          ntile(10) over(order by sales desc ) onebucket


from sales.orders

