-- shows all the cars from each maker
select car_make , car_model from car
group by car_make , car_model
order by car_make;

-- shows cheapest car of each maker
select car_make , car_model , min(car_price) from car
group by car_make , car_model
order by car_make;

-- shows most expensive car of each maker
select car_make , car_model , max(car_price) from car
group by car_make , car_model
order by car_make;

-- shows avg cost of car of each maker
select car_make , car_model , round(avg(car_price)) as avg_price from car
group by car_make , car_model
order by car_make;

-- shows num of car of each model
select car_make , car_model , count(*) from car
group by car_make , car_model
order by car_make;

-- show all car of audi
select car_make , car_model , count(*) from car
where car_make ilike 'audi'
group by car_make , car_model;

-- show total cost of audi cars
select car_make , sum(car_price) from car
where car_make ilike 'audi'
group by car_make;

-- show total cost of all maker
select car_make , sum(car_price) as total from car
group by car_make
order by total;
