USE activity5;

START TRANSACTION;
UPDATE EMPLOYEE 
SET 
    Salary = 2000
WHERE
    EmpNo = 1 AND SALARY = 1000;

COMMIT;
ROLLBACK;

SELECT 
    *
FROM
    EMPLOYEE;




