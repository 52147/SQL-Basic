-- IN: Used to filter records against a list of values.
SELECT * FROM table_name WHERE column_name IN (value1, value2, ...);

-- NOT IN: Filters out records that match any of the specified values.
SELECT * FROM table_name WHERE column_name NOT IN (value1, value2, ...);

-- BETWEEN: Selects values within a given range (inclusive).
SELECT * FROM table_name WHERE column_name BETWEEN value1 AND value2;

-- LIKE: Used for pattern matching. The "%" symbol is used as a wildcard.
SELECT * FROM table_name WHERE column_name LIKE 'pattern%';

-- IS NULL: Checks for null values.
SELECT * FROM table_name WHERE column_name IS NULL;

-- IS NOT NULL: Checks for non-null values.
SELECT * FROM table_name WHERE column_name IS NOT NULL;

-- Example:
-- Suppose you have a table employees with columns id, name, and salary. If you want to find employees with a salary greater than 5000 and whose names start with 'J', the query with conditions would be:
SELECT * FROM employees WHERE salary > 5000 AND name LIKE 'J%';