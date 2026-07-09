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
