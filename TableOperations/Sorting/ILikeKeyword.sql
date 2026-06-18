select * from users where gender like 'm%';      -- returns nothing coz the male is written in capital case like Male

select * from users where gender ilike 'm%';        -- now we get the result coz ilike is not case-sensitive