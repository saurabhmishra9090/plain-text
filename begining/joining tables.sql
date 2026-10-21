 

/*using salesdb retrieve a list of all orders along with the related customers , product,and employee details 
fro each order display orderid,
customername,productname,sales,amount,product price,salespersonname*/

select*
from sales.employees

select *
from sales.orders

select *
from sales.products

----select --
select 
		o.orderid,
		o.sales,
		c.firstname customerfirstname,
		c.lastname customerlastname,
		p.product as product_name,
		p.price,
		e.firstname as employeefirstname,
		e.lastname as employeelastname
from sales.orders as o
left join sales.customers as c
on o.orderid=c.customerid
left join sales.products as p
on o.productid=p.productid
left join sales.employees as e
on o.salespersonid=e.employeeid

