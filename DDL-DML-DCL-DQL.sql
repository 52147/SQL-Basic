-- 1. Data Definition Language (DDL):

-- CREATE: Creates objects in the database.
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- ALTER: Modifies existing database objects.
ALTER TABLE employees ADD email VARCHAR(100);

-- DROP: Deletes objects from the database.
DROP TABLE employees;


-- 2. Data Manipulation Language (DML):

-- INSERT: Adds data into a table.
INSERT INTO employees (id, name, age) VALUES (1, 'John', 30);

-- UPDATE: Modifies existing data.
UPDATE employees SET age = 31 WHERE name = 'John';

-- DELETE: Removes data from a table.
DELETE FROM employees WHERE name = 'John';



-- 3. Data Control Language (DCL): 
-- GRANT: Gives a user permission to perform certain tasks.
GRANT SELECT ON employees TO user1;
-- REVOKE: Takes back permissions granted to a user.
REVOKE SELECT ON employees FROM user1;


-- 4. Data Query Language (DQL): 

-- SELECT statement
SELECT name, age FROM employees WHERE age > 25;
