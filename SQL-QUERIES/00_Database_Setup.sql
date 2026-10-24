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
