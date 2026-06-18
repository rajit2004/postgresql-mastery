-- we use where clause to filter data using one more than one conditions

select * from users where gender = 'Male';
select * from users where gender = 'Male' and email is not null and last_name is not null order by id;