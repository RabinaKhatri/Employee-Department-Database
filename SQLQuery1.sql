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

--Find Salary whose salary is between 45000 and 70000, but who are not in IT
Select e.Empid, e.FirstName, e.MiddleName, e.LastName, e.Salary, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Where e.Salary Between 45000 and 70000
And d.DepName <> 'IT';

--Find employees whose names end with a and are active
Select * From Employees
Where FirstName Like '%a' And isActive = 1;

--Find employees who joined in 2023
Select * From Employees 
Where JoiningDate Between  '2023-01-01' And '2023-12-31';

--Adding Gmail Column and values 
ALTER TABLE Employees
ADD Gmail VARCHAR(50);

UPDATE Employees SET Gmail = 'rabinabhattarai74@gmail.com' WHERE Empid = 101;
UPDATE Employees SET Gmail = 'krisha@gmail.com' WHERE Empid = 102;
UPDATE Employees SET Gmail = 'rahul@yahoo.com' WHERE Empid = 103;
UPDATE Employees SET Gmail = 'ishika@gmail.com' WHERE Empid = 104;
UPDATE Employees SET Gmail = 'ram@gmail.com' WHERE Empid = 105;
UPDATE Employees SET Gmail = 'bishnu@hotmail.com' WHERE Empid = 106;
UPDATE Employees SET Gmail = 'diwas@gmail.com' WHERE Empid = 107;
UPDATE Employees SET Gmail = 'durga@gmail.com' WHERE Empid = 108;
UPDATE Employees SET Gmail = 'maya@gmail.com' WHERE Empid = 109;
UPDATE Employees SET Gmail = 'miksha@yahoo.com' WHERE Empid = 110;
UPDATE Employees SET Gmail = 'suman@gmail.com' WHERE Empid = 111;
UPDATE Employees SET Gmail = 'anisha@gmail.com' WHERE Empid = 112;
UPDATE Employees SET Gmail = 'prakash@gmail.com' WHERE Empid = 113;
UPDATE Employees SET Gmail = 'sabina@gmail.com' WHERE Empid = 114;
UPDATE Employees SET Gmail = 'rohan@gmail.com' WHERE Empid= 115;

Select * From Employees;

--Find employees with a Gmail address and salary above 60000
Select * From Employees  Where Gmail Like '%@gmail.com' And Salary > 60000;

--Write a query that combines WHERE, AND, OR, LIKE, and ORDER BY in a single statement
Select Empid, FirstName,LastName,Salary,isActive,JoiningDate
From Employees
Where (Salary > 50000 AND isActive = 1)
   Or FirstName LIKE 'R%' 
Order By Salary Desc;

Select * From Employees;
Select * From Department;

ALTER TABLE Employees
ADD FullName VARCHAR(100);

UPDATE Employees SET FullName = 'Rabina Bhattarai' WHERE Empid = 101;
UPDATE Employees SET FullName = 'Krishna Sharma Bhattarai' WHERE Empid = 102;
UPDATE Employees SET FullName = 'Rahul Bahadur Subedi' WHERE Empid = 103;
UPDATE Employees SET FullName = 'Ishika Bhattarai' WHERE Empid = 104;
UPDATE Employees SET FullName = 'Ram Bahadur Khadka' WHERE Empid = 105;
UPDATE Employees SET FullName = 'Bishnu Maya Timalsina' WHERE Empid = 106;
UPDATE Employees SET FullName = 'Diwas Adikhari' WHERE Empid = 107;
UPDATE Employees SET FullName = 'Durga Maya Bhattarai' WHERE Empid = 108;
UPDATE Employees SET FullName = 'Maya Devi Bhandari' WHERE Empid = 109;
UPDATE Employees SET FullName = 'Miksha Gurung' WHERE Empid = 110;
UPDATE Employees SET FullName = 'Suman Kumar Shrestha' WHERE Empid = 111;
UPDATE Employees SET FullName = 'Anisha Rai' WHERE Empid = 112;
UPDATE Employees SET FullName = 'Prakash Bahadur Karki' WHERE Empid = 113;
UPDATE Employees SET FullName = 'Sabina Maya Tamang' WHERE Empid = 114;
UPDATE Employees SET FullName = 'Rohan Basnet' WHERE Empid = 115;


--INNERJOIN/JOIN
--Display employee name with department name.
Select e.empid, e.FullName, d.DepName
From Employees e
Join Department d --Inner Join/ Join are same
On e.Depid = d.Depid;

--Display employees working in IT department.
Select e.empid, e.FullName, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Where d.DepName = 'IT';

--Find employees earning more than 55,000 with department name.
Select e.empid, e.FullName, e.salary, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Where Salary > 50000;

--Display active employees with department name.
Select e.FullName, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Where e.isActive = 1;

--Show employees who joined after 2023 with department.
Select e.FullName, e.JoiningDate, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Where e.JoiningDate > '2023-12-31';

--Count employees in each department.
Select Count(e.Empid) As TotalEmployees, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Group By d.DepName;

--Find average salary of each department.
Select Avg(e.Salary) As AverageSalary, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Group By d.DepName;

--Find highest-paid employee in each department.
Select Max(e.Salary) As HighestSalary, d.DepName
From Employees e
Join Department d
On e.Depid = d.Depid
Group By d.DepName;

--LEFTJOIN (all rows (table1) and matched rows(table2))
--Show all departments and their employees.
Select d.Depid, d.DepName, e.FullName
From Department d --Table1
Left Join Employees e --Table2
On d.Depid = e.Depid;

--Find departments without employees.
Select d.Depid, d.DepName, e.FullName
From Department d
Left Join Employees e
On d.Depid = e.Depid
Where e.Empid IS NULL;

--Show all departments with employee salary.
Select d.Depid, d.DepName, e.FullName, e.Salary
From Department d
Left Join Employees e
On d.Depid = e.Depid;

--Show employees if available, otherwise display all departments.
Select d.Depid, d.DepName, IsNull(e.FullName, 'No employees') As EmployeeNamee
From Department d
Left Join Employees e
On d.Depid = e.Depid;

--RIGHTJOIN [all rows(table2) and matched rows(table1)]
--Show all employees with department name.
Select e.Empid, e.FullName, d.DepName
From Department d  --Table1
Right Join Employees e  --Table2 
On d.Depid = e.Depid;

--Show employee names and department IDs.
Select e.FullName, d.Depid
From Department d
Right Join Employees e
On d.Depid = e.Depid;

--Find employees whose department exists.
Select e.FullName, d.Depid, d.DepName
From Department d
Right Join Employees e
On d.Depid = e.Depid
Where d.Depid IS NOT NULL;

--FULL JOIN
--Display all employees and all departments.
Select e.FullName, d.DepName
From Employees e
Full Join Department d
On e.Depid = d.Depid;

--Show unmatched employees or departments.
Select e.FullName, d.DepName
From Employees e
Full Join Department d
On e.Depid = d.Depid
Where e.Empid IS NULL OR e.Depid IS NULL;

--Show every department and employee, even if no match exists.
Select e.Empid, e.FullName, d.Depid, d.DepName
From Employees e
Full Join Department d
On e.Depid = d.Depid;

--SELF JOIN
--Find employees working in the same department.
Select E1.FullName As Employee1, E2.FullName As Employee2, E1.Depid
From Employees E1, Employees E2
Where E1.Empid <> E2.Empid 
And E1.Depid = E2.Depid
Order By E1.Depid;

--Find employees having the same salary.
Select E1.FullName As Employee1, E2.FullName As Employee2, E1.Salary
From Employees E1, Employees E2
Where E1.Empid <> E2.Empid
And E1.Salary = E2.Salary
Order By E1.Salary;

--Employees having the same age
Select E1.FullName As Employee1, E2.FullName As Employee2, E1.Age
From Employees E1, Employees E2
Where E1.Empid <> E2.Empid
And E1.Age = E2.Age
Order By E1.Salary;

--Employees in the same department and active
Select E1.FullName As Employee1, E2.FullName As Employee2, E1.Depid, E1.isActive
From Employees E1, Employees E2
Where E1.Empid <> E2.Empid
And E1.Depid = E2.Depid
And E1.isActive = 1
And E2.isActive = 1;

--Employees with the same Gmail domain
Select E1.FullName As Employee1, E2.FullName As Employee2, E1.Gmail
From Employees E1, Employees E2
Where E1.Empid <> E2.Empid
And Right(E1.Gmail,10) = Right(E2.Gmail,10);



--UNION
--List all employee names and department names.
Select FullName As Name
From Employees
Union
Select DepName As Name
From Department;

--Display all IDs (Employee IDs and Department IDs).
Select Empid As ID
From Employees
Union
Select Depid
From Department;

--Display all active employees and employees with salary above 60,000.
Select FullName, Salary, isActive From Employees
Where isActive = 1
Union
Select FullName, Salary, isActive From Employees
Where Salary > 60000;

--Show employees from IT and HR departments.
Select FullName From Employees
Where Depid = 1
Union 
Select FullName From Employees
Where Depid = 2;

--Show employees younger than 30 and employees older than 40.
Select FullName, Age From Employees
Where Age < 30
Union
Select FullName, Age From Employees
Where Age > 40;

--UNION ALL
--Show all active employees and employees with salary above 60,000 (including duplicates).
Select FullName From Employees
Where isActive = 1
Union All
Select FullName From Employees
Where Salary > 60000;

--Display all Gmail addresses and employee names.
Select Gmail As EmailAddress
From Employees 
Union All
Select FullName From Employees;

--Show employees in Sales and Marketing.
Select * From Department; --To know the department id of sales and marketing

Select FullName From Employees
Where Depid = 5
Union All
Select FullName From Employees
Where Depid = 3;

--Display employees who joined before 2023 and after 2023.
Select FullName From Employees
Where JoiningDate < '2023-01-01'
Union All
Select FullName From Employees
Where JoiningDate > '2023-12-31';

--Another way
Select FullName From Employees
Where Year(JoiningDate) < 2023
Union All
Select FullName From Employees
Where Year(JoiningDate) > 2023;

--Display all salaries and ages together.
Select Salary As EmployeeSalary
From Employees
Union All
Select Age As EmployeeAge
From Employees;


--Creating Backup Table of Both Employees and Department Table
--Select * into CosysEmployeesBackup From Employees;
--Select * From CosysEmployeesBackup;

--Select * into CosysDepartmentBackup From Department;
--Select * From CosysDepartmentBackup;

--Creating Backup Employees Table in another Database  
--Select * into intern..abc From Employees;
--Select * into intern..CosysDepartment From Department;

--CASE
--Display the salary category of each employee.
/*Question: Display each employee's name and categorize their salary as:
High Salary (≥ 60000)
Medium Salary (50000–59999)
Low Salary (< 50000)*/
Select FullName, Salary,
  CASE
   WHEN Salary >= 60000 THEN 'Highest Salary'
   WHEN Salary BETWEEN 50000 AND 59999 THEN 'Medium Salary'
   ELSE 'Low Salary'
  END AS Salary_Category
From Employees;


--Display employee status.: Show whether an employee is Active or Inactive based on isActive
Select FullName, isActive,
  CASE
    WHEN isActive = 1 THEN 'Active'
    ELSE 'InActive'
  END AS Employee_Status
From Employees;

/*Categorize employees by age.
Question: Display employees as: Young (<30), Adult (30–40), Senior (>40)*/
Select FullName, Age,
   CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 40 THEN 'Adult'
        ELSE 'Senior'
   END AS Employee_Age
From Employees;

/*Display bonus percentage.
Question: Assign bonus percentages: 10% for Salary ≥ 60000, 5% for Salary between 50000 and 59999, No Bonus otherwise */
Select FullName, Salary,
    CASE
        WHEN Salary >= 60000 THEN '10% Bonus'
        WHEN Salary BETWEEN 50000 AND 59999 THEN '5% Bonus'
        ELSE 'No Bonus'
    END AS Bonus
From Employees;

/* Display joining experience.
Question: Experienced if joined before 2022, New Employee otherwise */
Select FullName, JoiningDate,
   CASE
       WHEN Year(JoiningDate) < 2022 THEN 'Experienced'
       ELSE 'New Employee'
   END AS Joining_Experience
From Employees;


/*Display department names using CASE.
Question: Instead of joining the Department table, display department names using Depid.*/
SELECT * FROM DEPARTMENT;
Select FullName,
    CASE 
        WHEN Depid = 1 THEN 'IT'
        WHEN Depid = 2 THEN 'HR'
        WHEN Depid = 3 THEN 'Marketing'
        WHEN Depid = 4 THEN 'Finance'
        WHEN Depid = 5 THEN 'Sales'
        WHEN Depid = 6 THEN 'Quality Assurance'
        WHEN Depid = 7 THEN 'Data Migration'
    END AS Department
FROM Employees;

/*Assign employee grades.
Question: Assign grades based on salary:
Grade A (≥65000)
Grade B (55000–64999)
Grade C (45000–54999)
Grade D (<45000) */
Select FullName, Salary,
    CASE
        WHEN Salary >= 65000 THEN 'Grade A'
        WHEN Salary BETWEEN 55000 AND 64999 THEN 'Grade B'
        WHEN Salary BETWEEN 45000 AND 54999 THEN 'Grade C'
        ELSE 'Grade D'
    END AS Grade
From Employees;

/*Display email provider.
Question: Show whether an employee uses Gmail or another email provider.*/
Select FullName, Gmail,
    CASE
        WHEN Gmail LIKE '%@gmail.com' THEN 'Email'
        ELSE 'Other Email'
    END AS Gmail
From Employees;

/*Display retirement eligibility.
Question: Show whether employees are eligible for retirement.
 Age ≥ 60 → Eligible
 Otherwise → Not Eligible*/
 Select FullName,
    CASE 
        WHEN Age >= 60 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Retirement
 From Employees;

/*Display employee performance with department name.
Question: Display employee name, department name, salary, and performance:
Excellent (≥65000)
Good (55000–64999)
Average (45000–54999)
Needs Improvement (<45000)*/
Select e.FullName, d.DepName, e.Salary,
    CASE 
        WHEN e.Salary >= 65000 THEN 'Excellent'
        WHEN e.Salary BETWEEN 55000 AND 64999 THEN 'Good'
        WHEN e.Salary BETWEEN 45000 AND 54999 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS Performance
From Employees e
Join Department d
On e.Depid = d.Depid;

/*Display employee salary status with department name.
Question:Display employee name, department name, salary, and salary status.
Salary ≥ 70000 → Excellent
Salary between 55000 and 69999 → Good
Salary between 45000 and 54999 → Average
Salary < 45000 → Needs Improvement*/
Select e.FullName, d.DepName, e.Salary,
     CASE 
        WHEN e.Salary >= 70000 THEN 'Excellent'
        WHEN e.Salary BETWEEN 55000 AND 69999 THEN 'Good'
        WHEN e.Salary BETWEEN 45000 AND 54999 THEN 'Average'
        ELSE 'Needs Improvement'
     END AS Salary_Status
From Employees e
Join Department d
On e.Depid = d.Depid;

/* Display employee activity status.
Question: Display employee name, department name, and activity status.
isActive = 1 → Currently Working
isActive = 0 → Resigned */
Select e.FullName, d.DepName, 
     CASE
         WHEN e.isActive = 1 THEN 'Currently Working'
         ELSE 'Resigned'
     END AS Activity_Status
From Employees e
JOIN Department d
On e.Depid = d.Depid;

/* Display employee age group.
Question: Display employee name, department name, age, and age group.
Age < 25 → Junior
Age between 25 and 35 → Mid-Level
Age > 35 → Senior*/
Select e.FullName, d.DepName, e.Age,
      CASE
          WHEN e.Age < 25 THEN 'Junior'
          WHEN e.Age BETWEEN 25 AND 35 THEN 'Mid-Level'
          ELSE 'Senior'
      END AS Age_Group
From Employees e
JOIN Department d
On e.Depid = d.Depid;

/*Display employee experience level.
Question: Display employee name, department name, joining date, and experience level.
Joined before 2020 → Highly Experienced
Joined between 2020 and 2022 → Experienced
Joined after 2022 → New Employee */
Select e.FullName, d.DepName, e.JoiningDate,
     CASE
         WHEN YEAR(e.JoiningDate) < 2020 THEN 'Highly Experienced'
         WHEN YEAR(e.JoiningDate) BETWEEN 2020 AND 2022 THEN 'Experienced'
         WHEN YEAR(e.JoiningDate) > 2022 THEN 'New Employee'
     END AS Experience_Level
From Employees e
Join Department d
On e.Depid = d.Depid;



