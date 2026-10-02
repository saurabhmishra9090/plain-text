use mydatabase 
-- query one--
-- retrive the data of customers from the database --
select*
from customers
-- retriving the slected data--
select 
	first_name,
	country,score
from customers
--changing the order --
select 
		first_name,
		score,
		country
from customers
--