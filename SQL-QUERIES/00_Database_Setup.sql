-- SQL Sales Data Analysis
-- Database setup for Microsoft SQL Server

CREATE DATABASE SalesPracticeDB;
GO

USE SalesPracticeDB;
GO

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Department VARCHAR(30) NOT NULL,
    Sales DECIMAL(12, 2) NOT NULL,
    Target DECIMAL(12, 2) NOT NULL
);
GO

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(30) NOT NULL UNIQUE
);
GO

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'Sales'),
    (2, 'IT'),
    (3, 'HR'),
    (4, 'Finance'),
    (5, 'Marketing');
GO

/*
CSV IMPORT INSTRUCTIONS

1. Download sales_data.csv from the Dataset folder.
2. In SQL Server Management Studio, connect to your SQL Server.
3. Select SalesPracticeDB.
4. Use the SQL Server Import Flat File Wizard to import the CSV
   into a temporary table named SalesDataImport.
5. Verify that all 100 records were imported.
6. Insert the verified records into the Employees table.
*/
