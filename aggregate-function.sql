-- COUNT(): Counts the number of rows. If a column name is passed as an argument, it counts the number of non-NULL values in that column.
SELECT department, COUNT(*) as number_of_employees
FROM employees
GROUP BY department;

-- SUM(): Adds up the values in a numeric column.
SELECT department, SUM(salary) as total_salaries
FROM employees
GROUP BY department;

-- AVG(): Calculates the average value of a numeric column.
SELECT department, AVG(salary) as average_salary
FROM employees
GROUP BY department;

-- MIN(): Gets the minimum value in a set.
SELECT department, MIN(salary) as lowest_salary
FROM employees
GROUP BY department;


-- MAX(): Gets the maximum value in a set.
SELECT department, MAX(salary) as highest_salary
FROM employees
GROUP BY department;

-- GROUP_CONCAT() (in MySQL) / STRING_AGG() (in SQL Server): Aggregates data from multiple rows into a single string. Useful for seeing which items are in a category.
-- MySQL
SELECT department, GROUP_CONCAT(employee_name) as employee_names
FROM employees
GROUP BY department;

-- SQL Server
SELECT department, STRING_AGG(employee_name, ', ') as employee_names
FROM employees
GROUP BY department;


