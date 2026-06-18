select extract(year from dob) as yob , count(*) from users where extract(year from dob) > 2000 group by yob having count(*) > '5' order by yob;

select extract(month from dob) as mob , count(*) from users group by mob order by count(*) desc;