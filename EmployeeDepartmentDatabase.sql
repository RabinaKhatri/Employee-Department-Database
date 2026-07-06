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
