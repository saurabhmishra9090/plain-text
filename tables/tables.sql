---sql ctas tables --0
select 
 datename(month,orderdate) ordrmonth,
 count(orderid)totalorders
 into sales.monthlyorders
 from sales.orders
 group by datename(month,orderdate)

 select*
 from sales.monthlyorders