--replace function in sql ---

select 
      '123-456-789' as phone,
replace ('123-456-789','-','') as clean_phoneZ

-- replace file extent from .tct to .csv --

select 
 'report.txt' as old_file,
replace ( 'report.txt','.txt','.csv')