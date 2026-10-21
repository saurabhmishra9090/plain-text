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
