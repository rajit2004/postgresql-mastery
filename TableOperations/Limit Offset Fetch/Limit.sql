-- used to limit the num of records we get in the query result.

select * from users;
select * from users limit 20;           -- will show only 20 records now

select * from users where email is not null and last_name is not null and gender = 'Male' order by country limit 25;