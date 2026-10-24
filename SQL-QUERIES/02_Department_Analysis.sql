USE SalesPracticeDB;
GO

--1. Calculate total sales by department
SELECT 
  Department,
  SUM(Sales) AS TotalSales
FROM Employees
GROUP BY Department
ORDER BY TotalSales DESC;
GO
--2. Calculate average sales by department
SELECT
Department,
AVG(Sales) AS AverageSales
FROM Employees 
GROUP BY Department
ORDER BY AverageSales DESC;
GO
--3. Count Employees in each department
SELECT
Department,
COUNT(EmployeeID) AS EmployeeCount
FROM Employees
GROUP BY Department
ORDER BY EmployeeCount DESC;
GO
--4. Find departments with above-average total sales
SELECT 
Department,
SUM(Sales) AS TotalSales
FROM Employees
GROUP BY Department
HAVING SUM(Sales) > (
  SELECT AVG(DepartmentTotal)
  FROM (
  SELECT SUM(Sales) AS DepartmentTotal
  FROM Employees 
  GROUP BY Department 
  ) AS DepartmentSales
  )
ORDER BY TotalSales DESC;
GO



