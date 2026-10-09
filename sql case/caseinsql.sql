/*genearte a report showing the total sales for each category 
high: if the sales is >50
medium:if the sales is >20
low : if the sales is smaller then 20
order or sort the result from lowest to highest */
select
category,
sum(sales) as totalsales
from(
       select 
       orderid ,
        sales, 
        case
        when sales>50 then 'High'
        when sales >20 then 'Medium'
        else 'Low'
        End category 
        from sales .orders 
)t
group by category
order by totalsales desc


-- retrieve the employee details and gender as full name --
 select 
       employeeid,
       firstname,
       lastname,
       gender,
case 
   when gender='M' then 'male'
   when gender ='F' then 'Female'
   else 'not available'
end genderfulltext
from sales.employees 

--retrieve customers details with abbreviated country code--
select 
        customerid,
        firstname,
        lastname,
        country,
case 
        when country='Germany' then 'GE'
        when country='usa' then 'USA'
        else 'NOT AVAILABLE'
END countrycode
from sales.customers

    select distinct country 
    from sales.customers


    --handling nulls --

    ---find the avg score of cusotmers and treat null as 0 add additonla detauls such as cusotmerid and lastname--

    select 
          customerid,
          firstname,
          lastname,
          score,
   case 
       when score is null then 0
       else score
end scoreclean,
avg(score) over() as avgscore
from sales.customers


