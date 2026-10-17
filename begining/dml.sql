--data manipulation langugage--
select*
from sales.per1

insert into sales.per1
values(101,'Saurabh','Mishra','2003-10-12','India','s@gmail.com','235698474')


--inseerting multiple values--
insert into sales.per1
values(102,'manyata','saxena','2205-01-01','New york','mannusannu@gmail.com','12332564578'),
       (103,'mnyata','saxena','2205-05-01','Ne york','mannsannu@gmail.com','1233254578')

---updating an existing table--
update sales.per1
set Country = 'usa'
where Id=101
---update a whole row---

update sales.per1
set
      firstname ='marry',
       lastname='john',
       date_of_birth='2003-05-01',
       country='germany',
       Email='marry@gmail.com',
       phone_number='52516488659'

where id=103

--deleting a row---
delete from sales.per1
where id =103

select*
from customers

update customers 
set score=0,
    country='india'
where id=4

update customers
set score =32
where score=0

select*from orders

delete from orders 
where order_id>1003

insert into orders
values(1004,4,'2022-09-15',3)

