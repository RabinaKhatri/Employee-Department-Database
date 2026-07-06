# Employee and Department Database Management System

## Project Overview

This project demonstrates the creation and management of an Employee and Department database using Microsoft SQL Server. It includes database design, table creation, relationships, sample data insertion, and SQL queries for managing employee records.

---

## Features

- Create Employee and Department tables
- Primary Key and Foreign Key relationships
- Insert sample records
- Retrieve employee information
- Update employee records
- Delete records
- Filter and sort data
- Join Employee and Department tables
- Practice SQL CRUD operations

---

## Database Structure

### Department Table

| Column | Data Type |
|---------|-----------|
| DepID | INT |
| DepName | VARCHAR(50) |

### Employee Table

| Column | Data Type |
|---------|-----------|
| EmpID | INT |
| FirstName | VARCHAR(50) |
| MiddleName | VARCHAR(50) |
| LastName | VARCHAR(50) |
| Salary | DECIMAL(10,2) |
| DepID | INT |
| IsActive | BIT |

---

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

---

## Concepts Covered

- Database Design
- Primary Keys
- Foreign Keys
- CRUD Operations
- SQL Joins
- Constraints
- Data Types
- Data Filtering
- Aggregate Functions
---

## How to Run

1. Open SQL Server Management Studio.
2. Create a new database.
3. Open the `EmployeeDepartmentDatabase.sql` file.
4. Execute the script.
5. Run the SQL queries.
