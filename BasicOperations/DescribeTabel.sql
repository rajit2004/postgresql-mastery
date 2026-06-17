-- sql version of \d person (shows table structure)
-- this is the information schema query

SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM
    information_schema.columns
WHERE
    table_name = 'student';