--temp table -
select *
into #orders
from sales.orders

select*
from #orders