CREATE TABLE Department(
Depid INT PRIMARY KEY,
DepName VARCHAR(50) Not Null);

INSERT INTO Department(Depid, DepName)
VALUES
(01, 'IT'),
(02, 'HR'),
(03, 'Marketing'),
(04, 'Finance'),
(05, 'Sales'),
(06,'Quality Assurance'),
(07,'Data Migration');

SELECT * FROM Department;

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
 
 INSERT INTO Employees(Empid, FirstName, MiddleName, LastName, Salary, Depid, isActive)
 VALUES
 (101, 'Rabina','','Bhattarai',50000,01,1),
 (102, 'Krisha','Sharma','Bhattarai',30000,02,1),
 (103, 'Rahul','Bahadur','Subedi',50000, 03, 0),
 (104, 'Ishika','','Bhattarai',40000, 07, 1),
 (105, 'Ram','Bahadur','Khadka',60000,05,0),
 (106, 'Bishnu','Maya','Timalsina',70000,06,1),
 (107, 'Diwas','','Adikhari',65000,04,1),
 (108, 'Durga','Maya','Bhattarai',50000,03,1),
 (109, 'Maya','Devi','Bhandari',45000,02,0),
 (110, 'Miksha','','Gurung',55000,06,1),
 (111, 'Suman','Kumar','Shrestha',48000,01,1),
 (112, 'Anisha','','Rai',52000,04,1),
 (113, 'Prakash','Bahadur','Karki',68000,05,0),
 (114, 'Sabina','Maya','Tamang',47000,07,1),
 (115, 'Rohan','','Basnet',59000,03,1);
 
 SELECT * FROM Employees;

--To see the entire table of both Employees and Department
Select * From Employees;
Select * From Department;

--Display only the FirstName Column.
Select FirstName From Employees;

--Display only the Salary Column.
Select Salary From Employees;

--Display FirstName, LastName, and Email
Select FirstName, LastName From Employees;

--Display Salary As MonthlySalary
Select Salary As MonthlySalary From Employees;

--Display DepName As DepartmentName
Select DepName As DepartmentName From Department;

--Display all unique departments from the Employees table
Select Distinct(DepName) From Department;

--Display employees sorted by salary in descending order
Select * From Employees
Order By Salary Desc;

--Display employees sorted alphabetically by LastName in ascending order
Select * From Employees
Order By LastName;

--Display employees sorted by isActive
Select * From Employees
Order By isActive;

--Display employees sorted first by Department and then by Salary
Select * From Employees
Order By Depid, Salary;

--Display the first 5 employees
Select Top 5 * From Employees;

--Display the top 7 highest-paid employees
Select Top 7 * From Employees
Order By Salary;

--Display employee names in alphabetical order
Select FirstName, MiddleName, LastName From Employees
Order By FirstName, MiddleName, LastName;

--Display employees IDs in descending order
Select Empid From Employees
Order By Empid Desc;

--Adding the Age Column in Employees Table
ALTER TABLE Employees
ADD Age INT;
SELECT * FROM Employees;

--Adding values in Age column of each employee
UPDATE Employees
SET Age =25
WHERE Empid = 101;

UPDATE Employees
SET Age =21
WHERE Empid = 102;

UPDATE Employees
SET Age =28
WHERE Empid = 103;

UPDATE Employees
SET Age =29
WHERE Empid = 104;

UPDATE Employees
SET Age = 24
WHERE Empid = 105;

UPDATE Employees
SET Age = 23
WHERE Empid = 106;

UPDATE Employees
SET Age = 33
WHERE Empid = 107;

UPDATE Employees
SET Age = 34
WHERE Empid = 108;

UPDATE Employees
SET Age = 35
WHERE Empid = 109;

UPDATE Employees
SET Age = 41
WHERE Empid = 110;

UPDATE Employees
SET Age = 33
WHERE Empid = 111;

UPDATE Employees
SET Age = 34
WHERE Empid = 112;

UPDATE Employees
SET Age = 23
WHERE Empid = 113;

UPDATE Employees
SET Age = 43
WHERE Empid = 114;

UPDATE Employees
SET Age = 47	
WHERE Empid = 115;

--Write one query that shows all columns but sorts employees by age
Select * From Employees
Order By Age;

--Display all unique ages
Select Distinct(Age) From Employees;


--Adding JoiningDate Column in Employees Table
ALTER TABLE Employees
ADD JoiningDate DATE;

--Adding values in JoiningDate column of each employee
UPDATE Employees
SET JoiningDate = '2023-01-15'
WHERE Empid = 101;

UPDATE Employees
SET JoiningDate = '2023-02-10'
WHERE Empid = 102;

UPDATE Employees
SET JoiningDate = '2024-05-15'
WHERE Empid = 103;

UPDATE Employees
SET JoiningDate = '2025-06-15'
WHERE Empid = 104;

UPDATE Employees
SET JoiningDate = '2025-07-20'
WHERE Empid = 105;

UPDATE Employees
SET JoiningDate = '2022-08-25'
WHERE Empid = 106;

UPDATE Employees
SET JoiningDate = '2021-09-01'
WHERE Empid = 107;

UPDATE Employees
SET JoiningDate = '2020-01-01'
WHERE Empid = 108;

UPDATE Employees
SET JoiningDate = '2022-03-02'
WHERE Empid = 109;

UPDATE Employees
SET JoiningDate = '2021-02-19'
WHERE Empid = 110;

UPDATE Employees
SET JoiningDate = '2021-10-10'
WHERE Empid = 111;

UPDATE Employees
SET JoiningDate = '2023-10-20'
WHERE Empid = 112;

UPDATE Employees
SET JoiningDate = '2024-06-17'
WHERE Empid = 113;

UPDATE Employees
SET JoiningDate = '2025-07-07'
WHERE Empid = 114;

UPDATE Employees
SET JoiningDate = '2022-05-20'
WHERE Empid = 115;

--Display employees sorted by JoiningDate
Select FirstName, MiddleName, LastName, JoiningDate From Employees
Order By JoiningDate;

--Display all unique JoiningDate values
Select Distinct(JoiningDate) From Employees;

Select * From Employees;

