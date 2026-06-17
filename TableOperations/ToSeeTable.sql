-- displays complete table
select * from residents;

-- see only a particular column
select residents.email from residents;

-- select a particular column with conditions
select residents.country from residents where country != 'China';
select residents.first_name , residents.last_name from residents where email is null ;