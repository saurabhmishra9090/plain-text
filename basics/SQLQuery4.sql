select *
from customers



select
country,
	sum (score)
from customers
group by country 
-- overall using all the clauses --
select 
 country,
 sum(score) as total_score 
from customers 
where score >100
group by country
order by total_score
--- case2---

select 
 first_name,
 country,
	sum (score) as country_value 
from customers 
group by country , first_name 
order by country_value

/* find the total score and total number of customers by each country*/
select 

country,
sum(score) as total_score,
count(id) as total_cus
from customers 
group by country
order by total_score asc,total_cus desc