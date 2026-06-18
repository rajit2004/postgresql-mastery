select * from users offset 165;         -- skips 165 rows then shows result from 166th row

select * from users
where email is not null
and last_name is not null
and gender = 'Male'
order by id;
-- this sorts the data and finds the result now when we do offset we must ensure that the skips are not more than that of the data or we get nothing


-- OFFSET 0: Returns rows 1-25 (works)
SELECT * FROM users
WHERE email IS NOT NULL
AND last_name IS NOT NULL
AND gender = 'Male'
ORDER BY id
LIMIT 25 OFFSET 0;

-- OFFSET 25: Returns rows 26-50 (works)
SELECT * FROM users
WHERE email IS NOT NULL
AND last_name IS NOT NULL
AND gender = 'Male'
ORDER BY id
LIMIT 25 OFFSET 25;

-- OFFSET 50: Returns rows 51-58 (returns 8 rows)
SELECT * FROM users
WHERE email IS NOT NULL
AND last_name IS NOT NULL
AND gender = 'Male'
ORDER BY id
LIMIT 25 OFFSET 50;

-- OFFSET 100: Returns nothing (you already tried this)
SELECT * FROM users
WHERE email IS NOT NULL
AND last_name IS NOT NULL
AND gender = 'Male'
ORDER BY id
LIMIT 25 OFFSET 100;