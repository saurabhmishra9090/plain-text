-- the order by clause --
-- ASC--

 SELECT *
 FROM CUSTOMERS
 ORDER BY SCORE

 -- DESC ---
   SELECT*
   FROM customers 
   ORDER BY SCORE DESC


   --- using all four clauses ---
    select *
    from customers 
    where score >300
    order by score  

    --- nested sorting --
     select *
     from customers 
     order by country asc, score desc 
