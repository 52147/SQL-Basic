-- SQL to Create a View:
CREATE VIEW EmployeeDetails AS
SELECT e.EmployeeID, e.EmployeeName, d.DepartmentName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- This creates a view named EmployeeDetails. When you query this view:
SELECT * FROM EmployeeDetails;
