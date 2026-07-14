--1. Find employees whose salary is greater than the salary of at least one employee in the IT department.
SELECT FULLNAME FROM EMPLOYEES
WHERE SALARY > ANY (
      SELECT SALARY FROM EMPLOYEES
      WHERE DEPID = (
             SELECT DEPID FROM DEPARTMENT
             WHERE DEPNAME = 'IT')
);

--2. Find employees hired before any employee in the HR department.
SELECT FULLNAME, JOININGDATE FROM EMPLOYEES
WHERE JOININGDATE < ANY(
            SELECT JOININGDATE FROM EMPLOYEES
            WHERE DEPID = (
                   SELECT DEPID FROM DEPARTMENT
                   WHERE DEPNAME = 'HR')
);

--3. Find employees whose salary is less than any salary in the Finance department.
SELECT FULLNAME, SALARY FROM EMPLOYEES
WHERE SALARY < ANY (
            SELECT SALARY FROM EMPLOYEES
            WHERE DEPID = (
                   SELECT DEPID FROM DEPARTMENT
                   WHERE DEPNAME = 'Finance')
);
