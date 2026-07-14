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
