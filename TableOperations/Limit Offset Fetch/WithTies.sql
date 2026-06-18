-- Get the 5 most recent signups, but include ties if they share the same date
SELECT * FROM users
ORDER BY dob DESC
FETCH FIRST 5 ROWS WITH TIES;