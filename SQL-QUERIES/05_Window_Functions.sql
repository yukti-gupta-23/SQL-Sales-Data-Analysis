USE SalesPracticeDB;
GO

-- 1. Assign a unique row number to each employee by sales
SELECT
    EmployeeName,
    Department,
    Sales,
    ROW_NUMBER() OVER (
        ORDER BY Sales DESC
    ) AS RowNum
FROM Employees;
GO

-- 2. Rank all employees by sales
SELECT
    EmployeeName,
    Department,
    Sales,
    RANK() OVER (
        ORDER BY Sales DESC
    ) AS SalesRank
FROM Employees
ORDER BY Sales DESC;
GO

-- 3. Rank employees within each department
SELECT
    EmployeeName,
    Department,
    Sales,
    DENSE_RANK() OVER (
        PARTITION BY Department
        ORDER BY Sales DESC
    ) AS DepartmentRank
FROM Employees
ORDER BY Department, DepartmentRank;
GO

-- 4. Identify the highest-selling employee in each department
WITH EmployeeRanking AS (
    SELECT
        EmployeeName,
        Department,
        Sales,
        RANK() OVER (
            PARTITION BY Department
            ORDER BY Sales DESC
        ) AS DepartmentRank
    FROM Employees
)
SELECT
    EmployeeName,
    Department,
    Sales,
    DepartmentRank
FROM EmployeeRanking
WHERE DepartmentRank = 1
ORDER BY Department;
GO
