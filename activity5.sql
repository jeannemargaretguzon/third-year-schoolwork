CREATE DATABASE activity5;

CREATE TABLE Employee (
    EmpNo INTEGER NOT NULL,
    Sname VARCHAR(30) NOT NULL,
    JobLevel VARCHAR(30),
    JobStatus CHAR,
    DateHired DATE,
    Salary FLOAT,
    EmpAddress VARCHAR(30),
    CONSTRAINT emp_pk PRIMARY KEY (EmpNo)
);

INSERT INTO Employee VALUES
(11111, 'Cara Dulay', 'MGR', 'R', '2010-11-21', '10000', 'Manila'),
(11112, 'Ian Bartolome', 'RF', 'R', '2020-06-12', '2500', 'Caloocan'),
(11123, 'Agatha Tagala', 'S', 'R', '2018-01-17', '100000', 'Quezon'),
(11234, 'Andrew Castillo', 'MGR', 'R', '2011-06-21', '10000', 'Pasig'),
(12345, 'Luis Villanueva', 'RF', 'R', '2011-11-21', '3000', 'Pasig'),
(00001, 'Patrick Sudaria', 'MGR', 'P', '2022-04-10', '1000', 'Pasig'),
(00002, 'John Ignacio', 'RF', 'P', '2020-12-12', '1500', 'Manila'),
(00003, 'Irvin Presto', 'S', 'P', '2019-05-12', '50000', 'Caloocan'),
(00004, 'Jeri Claveria', 'MGR', 'P', '2021-03-10', '1000', 'Manila'),
(00005, 'Michaella Soriano', 'RF', 'P', '2022-09-12', '1500', 'Paranaque'),
(10000, 'Elora Nava', 'MGR', 'C', '2018-01-12', '10000', 'Paranaque'),
(20000, 'Diosa Gutierrez', 'RF', 'C', '2015-02-13', '3000', 'Mandaluyong'),
(30000, 'Elaine Cabezudo', 'S', 'C', '2015-02-13', '50000', 'Manila'),
(40000, 'Julia Boco', 'RF', 'C', '2015-02-27', '3000', 'Mandaluyong'),
(50000, 'Elaine Suganob', 'S', 'C', '2015-08-13', '50000', 'Quezon');

SELECT *
FROM Employee
WHERE Salary = (SELECT Salary FROM Employee WHERE EmpNo = 11111);

SELECT *
FROM Employee
WHERE Salary > (SELECT MIN(SALARY) FROM Employee);

SELECT *
FROM Employee
WHERE Salary = (SELECT MAX(SALARY) FROM Employee);

CREATE TABLE Regular_Emp (
    EmpNo INTEGER NOT NULL,
    Sname VARCHAR(30) NOT NULL,
    JobLevel VARCHAR(30),
    DateHired DATE,
    Salary FLOAT,
    EmpAddress VARCHAR(30),
    CONSTRAINT emp_pk PRIMARY KEY (EmpNo)
);

INSERT INTO Regular_Emp (EmpNo, Sname, JobLevel, DateHired, Salary, EmpAddress)
SELECT EmpNo, Sname, JobLevel, DateHired, Salary, EmpAddress
FROM Employee
WHERE JobStatus = 'R';

SELECT *
FROM Employee
WHERE Salary < (SELECT AVG(SALARY) FROM Employee);
