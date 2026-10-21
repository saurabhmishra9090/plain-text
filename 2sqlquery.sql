CREATE SCHEMA lib;
GO

CREATE TABLE lib.books (
    Book_Id INT PRIMARY KEY,
    Book_Name VARCHAR(100) NOT NULL,
    Author_Name VARCHAR(100) NOT NULL,
    Date_of_issue DATE NOT NULL
);
GO
select *
from lib.books

alter table lib.books
ADD Date_of_return date not null


alter table lib.books
drop column date_of_return

--- insertinf the data into the tbale --
insert into lib.books
values(101,'Happy','Saurabh','2003-10-12'),
      ( 102,'sad','mishra','2004-10-11'),
      ( 103,'sad','mishra','2004-10-11')

-- updating a table --
update lib.books
set Author_Name='Mannu'
where book_id=101
--deleting a data--

delete from lib.books
where book_id=103
select *
from lib.books

truncate table lib.books

------------------------------------------------------------------------------------
-------------------clauses practise------------------------------------------------                  -                -  
                  --select clause               -
                  ------------------

use mydatabase
select*
from customers

---------------WHERE CLAUSE--------
SELECT*
FROM CUSTOMERS 
WHERE SCORE>32

SELECT*
FROM CUSTOMERS 
WHERE COUNTRY='Germany'
------------------------order by clause------------------
select*
from customers
where score>=500
order by score desc
-------------nested sorting -----

select *
from customers
where score>32
order by country asc ,  
score desc
         
----------------------group by------------
select 
country,
sum (score) AS TOTAL_SCORE
FROM CUSTOMERS
WHERE SCORE<>0
GROUP BY COUNTRY
ORDER BY SUM(SCORE) DESC 
---------HAVING CLAUSE---------------
SELECT 
 COUNTRY,
 SUM(SCORE) AS TOTAL_SCORE
 FROM CUSTOMERS
 WHERE SCORE<>0
 GROUP BY COUNTRY
 HAVING SUM(SCORE)>700
 ORDER BY SUM(SCORE) DESC
 ------------------------------------------------------------------------------------------------------------------------------
 --------------THE WHERE CLAUSE ANS THE OPERATORES ------------
 SELECT *
 FROM CUSTOMERS
 WHERE SCORE>32

 SELECT *
 FROM CUSTOMERS
 WHERE SCORE>=750


 SELECT *
 FROM CUSTOMERS
 WHERE SCORE<750

 SELECT*
  FROM CUSTOMERS
  WHERE SCORE <=750

  ------------------------------------------------------------------------------------------------------
  ---------------SPECIAL OPERATORS-------------------------------------

  SELECT *
  FROM CUSTOMERS 
  WHERE COUNTRY IN('INDIA','GERMANY')


  
  SELECT *
  FROM CUSTOMERS 
  WHERE COUNTRY NOT IN('INDIA','GERMANY')


  -------------------------SQL JOINS-----------------
------------INNER JOIN--------------

SELECT 
     C.ID,
     C.FIRST_NAME,
     O.ORDER_DATE,
     O.SALES
FROM CUSTOMERS AS C
INNER JOIN ORDERS AS O
ON C.ID=O.CUSTOMER_ID


SELECT*
FROM CUSTOMERS

SELECT*
FROM ORDERS

------LEFT JOIN------
SELECT 
     C.ID,
     C.FIRST_NAME,
     C.SCORE,
     O.ORDER_DATE,
     O.SALES
FROM CUSTOMERS AS C
LEFT JOIN ORDERS AS O
ON C.ID=O.CUSTOMER_ID

SELECT 
     C.ID,
     C.FIRST_NAME,
     C.SCORE,
     O.ORDER_DATE,
     O.SALES
FROM  ORDERS AS O
LEFT JOIN CUSTOMERS AS C
ON C.ID=O.CUSTOMER_ID
-----------------------RIGHT JOIN-------------
SELECT 
      C.ID,
      C.FIRST_NAME,
      C.SCORE,
      O.ORDER_DATE,
      O.SALES
FROM CUSTOMERS AS C
RIGHT JOIN ORDERS as o
ON C.ID=O.CUSTOMER_ID
