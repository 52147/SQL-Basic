-- 1. Simple Alias: Let's say you have a table named CustomerInformation. For brevity, you can use an alias.
SELECT c.CustomerName, c.CustomerAge
FROM CustomerInformation c
WHERE c.CustomerAge > 30;
-- Here, c is an alias for the CustomerInformation table.


-- 2. Self-Join with Alias: If you have an Employees table and want to find pairs of employees with the same manager:
SELECT e1.EmployeeName AS Employee1, e2.EmployeeName AS Employee2
FROM Employees e1, Employees e2
WHERE e1.ManagerID = e2.ManagerID AND e1.EmployeeID <> e2.EmployeeID;

-- Here, e1 and e2 are aliases for the same Employees table, allowing us to differentiate between two different instances of the table in the self-join.


-- 3. Aliases for Derived Tables or Subqueries: In some cases, you might need to use a subquery as a derived table. You can assign an alias to that derived table.
SELECT d.TotalSales
FROM (SELECT SUM(SaleAmount) AS TotalSales FROM Sales) d
WHERE d.TotalSales > 1000;

-- In this case, d is an alias for the derived table resulting from the subquery.