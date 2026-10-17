--the select statement--
--retrieve all customers data--
use mydatabase 
select*
from customers 

--retrieve orders-
select*
from orders


--selecting specific column--
--retrieve specific data of customers-
select
		id,
		first_name,
		country
from customers

/* the where clause , customer whose score is not equal to 100*/
select*
from customers 
where score!=100


-- where clause with all operators--
--(1) greator then and greator then equal--
select*
from customers
where score>500

select*
from customers
where score>=400 

select*
from customers
where score<500

select*
from customers
where score<=400 
--logical operators-
select*
from customers 
where country='germany'
      and score >400
select*
from customers 
where country='germany'
or country='usa'


--retrive all customers  expect usa--
select*
from customers 
where not  country='usa'

---special operators--
----in operators--
select*
from customers 
where country in ('germany ','usa')
--not in --
select* 
from customers
where country not in ('germany','usa')

--between and not between--
select*
from customers
where score between 400 and 900

select*
from customers
where score not between 400 and 900

--firstname--
select*
from customers
where first_name like 'm%'

select*
from customers
where first_name like '%n'

select*
from customers
where first_name like '%ar%'


select*
from customers
where first_name like '_a%'

select*
from customers
where first_name like '__r%'

--isnull and not null--
select*
from customers
where score is null
select*
 from customers 
 where score is not null





