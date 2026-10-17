---creating the first table---
CREATE SCHEMA sales;



create table sales.per1(
Id int not null,
Firstname varchar(15) not null,
Lastname varchar(15) not null,
Date_of_birth date,
Country varchar(10) not null,
Email varchar(20) not null,
Phone_number varchar (15)not null,

constraint pk_sales_per1 primary key (ID)
);

select*
from sales.per1;

--ading a new column--
 alter table sales.per1
add  residence varchar(23)  null

drop table per1


select*
from sales.per1;


alter table sales.per1
drop column residence