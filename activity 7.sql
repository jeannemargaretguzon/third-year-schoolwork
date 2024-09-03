CALL filter_employee_status('P');

CALL filter_employee_status('C');

CALL filter_employee_status('R');

CALL filter_employee_hireddate('2015-02-27');

CREATE VIEW HighestPerformingEmployee  AS
SELECT EmpNo, DateHired, Salary
FROM EMPLOYEE
WHERE Salary = (SELECT MAX(SALARY) FROM Employee);

SELECT * 
FROM HighestPerformingEmployee;

CREATE VIEW HighestPerformingEmployeeRange  AS
SELECT EmpNo, DateHired, Salary
FROM EMPLOYEE
WHERE  Salary > ((SELECT MAX(SALARY) FROM Employee) - 5000) OR Salary < (SELECT MAX(SALARY) FROM Employee);

SELECT * 
FROM HighestPerformingEmployeeRange;