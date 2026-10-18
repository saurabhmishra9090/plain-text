drop table sales.per1

create table sales.per1(
customer_id int primary key,
first_name varchar(15) not null,
last_name varchar(15) not null,
orders int not null)


select *
from sales.per1