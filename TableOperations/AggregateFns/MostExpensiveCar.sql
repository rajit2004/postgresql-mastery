select max(car_price) from car;

-- alternative
select car_price from car order by car_price desc limit 1;