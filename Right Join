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
