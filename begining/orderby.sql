--retrieve all customers and sort them by highest score--
select*
from customers 
where score<>0
order  by score  desc 

select*
from customers
where score <>0
order by country asc,
score desc 

---find tostl score for each country --
--GROUPBY--
select 
      country,
      sum(score) as total_score
from customers
group by country
order by country desc

--find the avg score for each country considering only customers wotha score not equal to 0 and returns only those avg >430--
select
      country,
      avg(score) as avg_score
from customers
where score <> 0
group by country
having avg(score)>430
order by avg(score) desc

--distinct clause--
select distinct*
from customers

select distinct
       country,
count(country) as cc
from customers
where country is not null
group by country


--all clauses in one query--

select  top 3
        country,
        sum(score) as top_3_score
from customers
where  score is not null
group by country
having sum(score)>300
order by sum(score) desc