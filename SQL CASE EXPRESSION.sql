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


--Display employee status: Show whether an employee is Active or Inactive based on isActive
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
