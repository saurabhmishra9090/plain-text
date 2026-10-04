-- MULTI JOINS TABLE --
 USE SalesDB


 /*Retrieve a list of all orders along with the related customers ,
 products, and employee details  for each order display ,
 order id customers name , product name , sales , price , sale person name*/
 
 select 
       o.orderid,
       o.sales,
       c.firstname as customerfirstname,
       c.lastname as customerlastname,
       p.product as productname,
       p.price,
       e.FirstName as EmployeeFirstName,
       e.lastname as employeelastname
        from sales.orders as o
        left join sales.customers as c 
        on o.customerid=c.customerid
        LEFT JOIN Sales.Products AS p
        ON o.ProductID = p.ProductID
        LEFT JOIN Sales.Employees AS e
        ON o.SalesPersonID = e.EmployeeID



     SELECT
    o.OrderID,
    o.Sales,
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    p.Product AS ProductName,
    p.Price,
    e.FirstName AS EmployeeFirstName,
    e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID