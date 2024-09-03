CREATE DATABASE DB_Employee;

CREATE TABLE Employee_T
	(EmpID		INTEGER NOT NULL,
	 EmpName 	VARCHAR(30) NOT NULL,
     Job		VARCHAR(30),
     Salary		FLOAT NOT NULL,
     Division	VARCHAR(30),
CONSTRAINT emp_pk PRIMARY KEY (EmpID));

ALTER TABLE Employee_T
MODIFY Division VARCHAR(5);

ALTER TABLE Employee_T
MODIFY EmpName CHAR(30);

ALTER TABLE Employee_T
ADD Date_Hired DATE;

INSERT INTO Employee_T VALUES
(7, 'Cara Elyssa Dulay', 'MGR', 100000, 'ISD', '2015-11-19'),
(8, 'Ian Vincent Bartolome', 'RF', 25000, 'FIN', '2020-06-12'),
(9, 'Agatha Gwen Tagala', 'MGR', 25000, 'HR', '2018-01-17'),
(10, 'Patrick Sudaria', 'SMR', 50000, 'FIN', '2022-04-10'),
(11, 'John Dani Oicangi', 'SMR', 15000, 'HR', '2020-12-12');

SELECT *
FROM Employee_T
ORDER BY Division;

SELECT *
FROM Employee_T
WHERE Job = 'MGR';

SELECT *
FROM Employee_T
WHERE Division = 'ISD' OR Division = 'FIN' AND Salary > 200;

UPDATE Employee_T
SET Salary = 300
WHERE EmpID = 11;

UPDATE Employee_T
SET Salary = 1000
WHERE Job = 'MGR';

SELECT COUNT(*)
From Employee_T
WHERE Job = 'MGR';

SELECT SUM(Salary)
From Employee_T
WHERE Division = 'ISD';

SELECT Division, SUM(Salary) AS "Total Salary"
FROM Employee_T
GROUP BY Division;
    
SELECT Division, SUM(Salary) AS "Total Salary no lower 600"
FROM Employee_T
GROUP BY Division
HAVING SUM(Salary)>600;    

SELECT AVG(Salary) AS "Average Salary"
FROM Employee_T
WHERE Job = 'MGR';

SELECT AVG(Salary) AS "Average Salary per Job Level"
FROM Employee_T
Group by Job;

SELECT AVG(Salary>100 AND Salary<300) AS "Average Salary between 100 and 300"
FROM Employee_T
Group by Job;

DELETE FROM Employee_T
WHERE Salary < 100;

SELECT EmpName,
LEFT(EmpName,3) as 'Nickname'
FROM Employee_T;

SELECT EmpName,
Right(EmpName,5) as 'Surname'
FROM Employee_T;

SELECT LTRIM(RTRIM('                           I have a lot of space                '));

SELECT ROUND(123123.123123, 2);

SELECT SQRT(16);

SELECT REVERSE('I LIKE DATABASE ADMINISTRATION');