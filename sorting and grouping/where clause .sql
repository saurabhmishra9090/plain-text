/*where clause CASE1*/
--only using where clause --
select *
from customers
--case 1--
select* 
from customers
where score!=0
-- slecting column and using where clause--
select 
first_name,
country
from customers
where score>500
-- question two retrieve customers from germany --
-- case 1 by using where clause --
select*
from customers
where country= 'Germany' 
-- case 2 why using select clause--
 select 
 country 
 from customers 
 where country='Germany'


 --- logical operators--
 select*
 from customers
 where country='Germany'
 AND score>100
 

 ---or operator--

  select*
 from customers
 where country='Germany'
 or score>100
 ---in operator--
 select*
 from customers
 where country='Germany'
 or country='USA'
 or country='uk'

 --- another options--

  select*
 from customers
 where country in ('Germany','usa','uk')
 --- the story of m%--
  select*
 from customers
 where  first_name LIKE 'M%'

