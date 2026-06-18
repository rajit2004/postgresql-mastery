-- ========================================
-- Concept: FETCH WITH TIES (Only checks the last row!)
-- ========================================

-- Scenario: Users table with duplicate birthdays
-- It only includes ties for the LAST row in the range.

-- 1. Without TIES: Returns exactly 4 rows
SELECT * FROM users
ORDER BY dob
FETCH FIRST 4 ROWS ONLY;

-- 2. With TIES: Returns 4 + any extra rows that share the 4th row's date
SELECT * FROM users
ORDER BY dob
FETCH FIRST 4 ROWS WITH TIES;

-- 3. With TIES on a unique column (e.g., id): Does nothing extra
-- Since IDs are unique, no ties exist
SELECT * FROM users
ORDER BY id
FETCH FIRST 5 ROWS WITH TIES;
-- This behaves exactly like FETCH FIRST 5 ROWS ONLY