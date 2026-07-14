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
