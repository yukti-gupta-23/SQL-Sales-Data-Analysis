USE SalesPracticeDB;
GO
    
-- 1. Find employees whose sales are above average employee sales
SELECT
    EmployeeName,
    Department,
    Sales
FROM Employees
WHERE Sales > (
    SELECT AVG(Sales)
    FROM Employees
)
ORDER BY Sales DESC;
GO
    
-- 2. Find the employee(s) with the second-highest distinct sales
SELECT
    EmployeeName,
    Department,
    Sales
FROM Employees
WHERE Sales = (
    SELECT MAX(Sales)
    FROM Employees
    WHERE Sales < (
        SELECT MAX(Sales)
        FROM Employees
    )
);
GO
    
-- 3. Calculate total sales by department using a CTE
WITH DepartmentSales AS (
    SELECT
        Department,
        SUM(Sales) AS TotalSales
    FROM Employees
    GROUP BY Department
)
SELECT
    Department,
    TotalSales
FROM DepartmentSales
ORDER BY TotalSales DESC;
GO
    
-- 4. Find departments whose total sales exceed average department sales
WITH DepartmentSales AS (
    SELECT
        Department,
        SUM(Sales) AS TotalSales
    FROM Employees
    GROUP BY Department
)
SELECT
    Department,
    TotalSales
FROM DepartmentSales
WHERE TotalSales > (
    SELECT AVG(TotalSales)
    FROM DepartmentSales
)
ORDER BY TotalSales DESC;
GO
