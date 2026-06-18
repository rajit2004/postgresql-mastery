select * from users
where email like '%yahoo.com';

select * from users
where email like '%.org'
and last_name is not null
and gender = 'Male'
order by country;

select * from users
where email like '_____@%';     -- each underscore defines a single character