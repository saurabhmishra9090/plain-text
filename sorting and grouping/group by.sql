use mydatabase
/* group by*/
select
	  country,
	  sum(score)
from customers
group by country

/*order by*/
select
	  country,
	  sum(score) as total_score

from customers
group by country

order by country desc
/*nested group by*/
select
	  country,
	  first_name as coustomer_name,
	  sum(score) as total_score

from customers
group by country, first_name

order by country desc

/* find the total score and total number of customers for each country*/
select
	  country,
	  sum(score) as total_1,
	  count(ID) as total_2
from customers
group by country
