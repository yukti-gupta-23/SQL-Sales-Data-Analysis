USE SalesPracticeDB;
GO

-- 1. Calculate target achievement for each employee
SELECT
    EmployeeName,
    Department,
    Sales,
    Target,
    Sales - Target AS SalesTargetDifference,
    (Sales * 100.0) / Target AS AchievementPercentage
FROM Employees
ORDER BY AchievementPercentage DESC;
GO

-- 2. Classify employees by target achievement
SELECT
    EmployeeName,
    Department,
    Sales,
    Target,
    CASE
        WHEN Sales >= Target THEN 'Target Met'
        ELSE 'Target Not Met'
    END AS PerformanceStatus
FROM Employees
ORDER BY Sales DESC;
GO

-- 3. Count employees who met or exceeded their targets
SELECT
    Department,
    COUNT(EmployeeID) AS EmployeeCount,
    SUM(
        CASE
            WHEN Sales >= Target THEN 1
            ELSE 0
        END
    ) AS EmployeesMeetingTarget
FROM Employees
GROUP BY Department
ORDER BY Department;
GO

-- 4. Calculate department-level target achievement
SELECT
    Department,
    SUM(Sales) AS TotalSales,
    SUM(Target) AS TotalTarget,
    (SUM(Sales) * 100.0) / NULLIF(SUM(Target), 0)
        AS DepartmentAchievementPercentage
FROM Employees
GROUP BY Department
ORDER BY DepartmentAchievementPercentage DESC;
GO
