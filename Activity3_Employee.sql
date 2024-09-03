CREATE DATABASE Activity3; 

CREATE TABLE Department
	(DeptCode	CHAR(3),
     DeptName	VARCHAR(20) NOT NULL,
     DeptMgr	VARCHAR(20),
CONSTRAINT emp_pk PRIMARY KEY (DeptCode));

CREATE TABLE Employee
	(EmpNo		INTEGER NOT NULL,
	 EmpName 	VARCHAR(20) NOT NULL,
     Salary		FLOAT(10,2) NOT NULL,
     Job		CHAR(3),
     DeptCode	CHAR(3),
CONSTRAINT del_dept_fk FOREIGN KEY(DeptCode) 
REFERENCES Department(DeptCode)
ON DELETE CASCADE
);

INSERT INTO Department VALUES
('ISD', 'Operations' , 'Patrick'),
('FIN', 'Finance', 'John'),
('HR', 'Hiring', 'Agatha');

INSERT INTO Employee VALUES
(101, 'John', 1000, 'MGR', 'ISD'),
(102, 'Patrick', 2500, 'MGR', 'FIN'),
(103, 'Agatha', 5000, 'MGR', 'HR'),
(104, 'Cara', 2500, 'EMP' , 'HR'),
(104, 'Gwen', 1000, 'EMP', 'FIN');

DELETE FROM Department 
WHERE DeptCode = 'ISD';

SELECT * 
FROM Employee;

SELECT * 
FROM Department;

ALTER TABLE Employee
DROP CONSTRAINT del_dept_fk;

ALTER TABLE Employee
ADD CONSTRAINT update_dept_fk FOREIGN KEY(DeptCode) REFERENCES Department(DeptCode) ON UPDATE CASCADE;

INSERT INTO Department VALUES
('EDU', 'EDUCATION','Ian');

INSERT INTO Employee VALUES
(104, 'Ian', 1000, 'EMP', 'EDU');

UPDATE Department 
Set DeptCode = 'EDT'
WHERE DeptCode = 'EDU';

ALTER TABLE Employee
DROP CONSTRAINT update_dept_fk;

ALTER TABLE Employee
DROP CONSTRAINT update_null_dept_fk;

ALTER TABLE Employee
ADD CONSTRAINT del_dept_fk FOREIGN KEY(DeptCode) 
REFERENCES Department(DeptCode)
ON DELETE CASCADE;

DELETE FROM Department
WHERE DeptCode = 'EDP';

DELETE FROM Employee
WHERE EmpName = 'Lori';

ALTER TABLE Employee
DROP CONSTRAINT del_dept_fk;

ALTER TABLE Employee
ADD CONSTRAINT update_null_dept_fk FOREIGN KEY(DeptCode) REFERENCES Department(DeptCode) ON UPDATE CASCADE;

INSERT INTO Department VALUES
('EDU', 'Elementary','Lori');

INSERT INTO Employee VALUES
(105, 'Lori', 1000, 'EMP', 'EDU');

UPDATE Department 
Set DeptCode = 'EDT'
WHERE DeptCode = 'EDU';

DROP DATABASE activity3;