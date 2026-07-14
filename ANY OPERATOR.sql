--EXISTS OPERATOR
--1. Find departments that have at least one employee.
SELECT D.DEPID, D.DEPNAME
FROM DEPARTMENT D
WHERE EXISTS (
      SELECT *
      FROM EMPLOYEES E
      WHERE E.DEPID = D.DEPID);

--2. Find employees who belong to an existing department.
SELECT * FROM EMPLOYEES E
WHERE EXISTS (
      SELECT *
      FROM DEPARTMENT D
      WHERE D.DEPID = E.DEPID);

--3. Find departments with no employees.
SELECT DEPNAME
FROM DEPARTMENT D
WHERE NOT EXISTS(
          SELECT * FROM EMPLOYEES E
          WHERE E.DEPID = D.DEPID);

--4. Find employees working in departments that have more than one employee.
SELECT FULLNAME
FROM EMPLOYEES E1
WHERE EXISTS(
      SELECT 1 
      FROM EMPLOYEES E2
      WHERE E1.DEPID = E2.DEPID
      AND E1.DEPID <> E2.DEPID); 
