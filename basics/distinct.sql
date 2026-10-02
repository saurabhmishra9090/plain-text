 select distinct 
  
       country ,
       avg(score) as average_score 
from customers 
where Score!=0
group by country
