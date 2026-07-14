--ALL OPERATOR
--1. Find employees whose salary is greater than all employees in the HR department.
SELECT FULLNAME, SALARY FROM EMPLOYEES
WHERE SALARY > ALL (
           SELECT SALARY FROM EMPLOYEES
           WHERE DEPID = (
                  SELECT DEPID FROM DEPARTMENT
                  WHERE DEPNAME = 'HR')
);
--2. Find employees hired before all employees in the Sales department.
SELECT FULLNAME FROM EMPLOYEES
WHERE JOININGDATE < ALL (
                 SELECT JOININGDATE FROM EMPLOYEES
                 WHERE DEPID = (
                            SELECT DEPID FROM DEPARTMENT
                            WHERE DEPNAME = 'Sales')
);

--3. Find employees whose salary is less than all salaries in the IT department.
SELECT FULLNAME FROM EMPLOYEES
WHERE SALARY < ALL (
             SELECT SALARY FROM EMPLOYEES
             WHERE DEPID = (
                        SELECT DEPID FROM DEPARTMENT
                        WHERE DEPNAME = 'IT')
);
