--Created Cosys Database
CREATE Database Cosys;

--Created Department Table
CREATE TABLE Department(
Depid INT PRIMARY KEY,
DepName VARCHAR(50) Not Null);

--Created Employees Table
CREATE TABLE Employees(
 Empid INT PRIMARY KEY,
 FirstName VARCHAR(50) Not Null,
 MiddleName VARCHAR(50),
 LastName VARCHAR(50) Not Null,
 Salary DECIMAL(10,2),
 Depid INT,
 isActive BIT,
 FOREIGN KEY (Depid) REFERENCES Department(Depid)
 );

