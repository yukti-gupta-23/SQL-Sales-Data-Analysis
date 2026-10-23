USE SalesPracticeDB;
GO
-- 1. Display all employees
SELECT * 
FROM Employees;
GO
-- 2. Display employees with sales above 60000
SELECT EmployeeName, Department, Sales
FROM Employees
WHERE Sales > 60000
ORDER BY Sales DESC;\
GO
-- 3. Calculate total sales by department
SELECT Department, SUM(Sales) AS TotalSales
FROM Employees
GROUP BY Dpeartment 
ORDER BY TotalSales DESC;
GO
-- 4. Calculate employee target achievement
SELECT 
EmployeeName,
Department,
Sales,
Target,
(Sales*100)/ Target AS AchievementPercentage
FROM Employees 
ORDER BY AchievementPercentage DESC;
GO
