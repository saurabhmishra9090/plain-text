-- Inserting, Updating and deleting the table
 select * from customers 
 insert into customers (id , first_name, country, score)
 values	
		(11,'Maria','usa',500),
		(12,'Daryl','spain',600)

		insert into customers (id, first_name)
		values 
				(13,'rick'),
				(14,'saam')


				---movinfg a table data from 1 table to another ---
insert into personos(id,person_name,DOB,phone)
select
id ,
first_name ,
null,
null
from customers 

select*
from personos 


-- updating the tbale --
update customers 
set 
	score =0
where id=6

select *
 from customers 
 /* change the score of customer with id=10  to 0 and update the country to germany*/


 update customers
 set 
	score =0,
	country= 'Germany'
where id =13

select*from customers


-- update all customers with null score to 0--


update customers 
set
	score =0
where score IS NUll 