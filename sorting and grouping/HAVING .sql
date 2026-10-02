use MyDatabase
select 
country, 
first_name,
sum(score) as total_value
from customers 
where score>100
group by country ,first_name
having sum(score)>20

select *
from customers
/* find average score for each country considering 
only customers with averga escore not equal to zero
and return only those country with an average score >then 430*/
 select 
       first_name,
       id, 
       country ,
       avg(score) as average_score 
from customers 
where Score!=0
group by country,first_name,id



 

