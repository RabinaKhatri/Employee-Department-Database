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
