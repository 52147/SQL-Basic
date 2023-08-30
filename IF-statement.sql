-- 1. Within Stored Procedures and Functions:
-- MySQL Example:

DELIMITER //
CREATE PROCEDURE SimpleIfExample(IN val INT)
BEGIN
  IF val > 10 THEN
    SELECT 'Value is greater than 10';
  ELSE
    SELECT 'Value is 10 or less';
  END IF;
END //
DELIMITER ;

-- SQL Server Example:

CREATE PROCEDURE SimpleIfExample @val INT
AS
BEGIN
  IF @val > 10
  BEGIN
    SELECT 'Value is greater than 10'
  END
  ELSE
  BEGIN
    SELECT 'Value is 10 or less'
  END
END


-- 2. In SELECT Statements using Conditional Expressions:
-- While this isn't the IF statement in the traditional sense, databases often offer conditional functions that provide similar functionality within queries.

-- MySQL Example using IF function:
SELECT name, salary, IF(salary > 5000, 'High', 'Low') as SalaryGrade FROM employees;
-- In SQL Server, the equivalent would be the CASE statement:
SELECT name, salary, 
       CASE 
          WHEN salary > 5000 THEN 'High'
          ELSE 'Low'
       END as SalaryGrade 
FROM employees;

