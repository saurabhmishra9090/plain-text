USE MyDatabase

-- SELECT CUSTOMERS WHOSE SCORE IS NOT EQUAL TO 0
SELECT*
FROM customers
WHERE SCORE!=0 


/* second query case 1
select data where country is equal to germnay */
select*
from customers
where country = 'germany'
-- case 2--
select*
from customers
where country != 'germany'
-- case3--
select
	first_name,
	country
from customers
where country != 'germany'