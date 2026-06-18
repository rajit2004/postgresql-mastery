select * from users
where dob between '01/01/2000' and '01/01/2010' and
(last_name , email) is not null
order by dob
offset 5 fetch first 10 rows with ties;
