select EXTRACT(year from dob) as year_of_birth , count(*)
from users group by year_of_birth order by year_of_birth;