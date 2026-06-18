/*
========================================
CONCEPT: The IN Operator
========================================

What it does:
Checks if a value matches ANY value in a list or subquery.

Syntax:
    WHERE column_name IN (value1, value2, value3, ...);
    WHERE column_name IN (SELECT column FROM ...);

The opposite:
    WHERE column_name NOT IN (value1, value2, ...);

Why use it?
- Much cleaner than writing multiple OR conditions.
- Great for filtering against a specific set of IDs, names, or statuses.
========================================
*/

-- Example 1: Basic usage with a static list
-- Select users from specific countries
SELECT * FROM users
WHERE country IN ('USA', 'India', 'Japan');

-- The above is equivalent to this (but much shorter):
SELECT * FROM users
WHERE country = 'USA'
   OR country = 'India'
   OR country = 'Japan';

-- Example 2: Using NOT IN (Exclude specific IDs)
SELECT * FROM users
WHERE id NOT IN (5, 10, 15, 20);

-- Example 3: Using IN with a Subquery (advanced)
-- Select users whose IDs exist in another table (e.g., orders)
-- (Assuming an 'orders' table exists)
-- SELECT * FROM users
-- WHERE id IN (SELECT user_id FROM orders);

/*
========================================
🚨 CRITICAL WARNING: NULL Behavior!
========================================
If the list or subquery contains a NULL value, NOT IN will return ZERO rows!

    -- WRONG (Avoid this if subquery might return NULL):
    SELECT * FROM users
    WHERE id NOT IN (SELECT user_id FROM orders);
    -- If any order has user_id = NULL, this query returns nothing!

    -- SAFE (Explicitly filter out NULLs):
    SELECT * FROM users
    WHERE id NOT IN (SELECT user_id FROM orders WHERE user_id IS NOT NULL);
========================================
*/


select * from users
where country in ('China' , 'Poland') and (last_name , email) is not null and gender = 'Male'
order by id ;

-- Get all users from Indonesia, China, or Brazil
SELECT * FROM users
WHERE country IN ('Indonesia', 'China', 'Brazil')
ORDER BY country;