select * from users fetch first 10 rows only;
-- select * from users fetch last 10 rows only; -- fetch last does not exist.

-- equivalent of fetch last = sort in desc fetch first n rows : same as fetching last n rows

select * from users order by id desc fetch first 10 rows only;      -- last 10 rows.