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
