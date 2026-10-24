--1. Display employee names with their department IDs
SELECT 
E.EmployeeName,
D.DepartmentName,
D.DepartmentID,
E.Sales
FROM Employees AS E
INNER JOIN Departments AS D
ON E.Department = 
D.DepartmentName
ORDER BY E.Sales DESC;
GO
--2. Calculate total sales by department using JOIN
SELECT 
D.DepartmentName,
SUM(E.Sales) AS TotalSales
FROM Employees AS E
INNER JOIN Departments AS D
ON E.Department = 
D.DepartmentName
GROUP BY D.DepartmentName
ORDER BY TotalSales DESC;
GO
--3. Display employees whose sales exceed their targets 
SELECT 
E.EmployeeName,
D.DepartmentName,
E.Sales,
E.Target,
E.Sales - E.Target AS SalesTargetDifference
FROM Employees AS E
INNER JOIN Departments AS D
ON E.Department = D.DepartmentName
WHERE E.Sales > E.Target
ORDER BY SalesTargetDifference;
GO


