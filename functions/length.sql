-- calculate the length of each customers first name--

select 
      first_name,
      len(first_name) as length
from customers


-- left and right function --
-- replace first 2 charcters from the name 
select 
      first_name,
      left(trim(first_name),2) as length
from customers


-- substring funtion ---

 select
         first_name,
         substring(trim(first_name),2,len(first_name)) as sub_name
         from customers 

