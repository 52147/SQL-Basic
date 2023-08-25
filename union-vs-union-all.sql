-- 1. Using UNION:
-- Now, let's retrieve the list of unique employees across both the cities.

SELECT EmployeeName FROM Employees_NewYork
UNION
SELECT EmployeeName FROM Employees_LosAngeles;

-- Result:
-- Notice that even though "Robert" exists in both tables, it appears only once in the result.

-- 2. Using UNION ALL:
-- Now, let's retrieve the list of all employees, including duplicates.

SELECT EmployeeName FROM Employees_NewYork
UNION ALL
SELECT EmployeeName FROM Employees_LosAngeles;


-- Result:
-- Here, "Robert" appears twice because he exists in both tables. No attempt is made to eliminate duplicate rows.
