CREATE DATABASE activity3;

CREATE TABLE Student
	(studID		INTEGER NOT NULL,
	 studName 	VARCHAR(30) NOT NULL,
     yearLvl	VARCHAR(30),
     age		INTEGER NOT NULL,
     course	    VARCHAR(30),
CONSTRAINT stud_pk PRIMARY KEY (studID));

ALTER TABLE Student
MODIFY course VARCHAR(5);

ALTER TABLE Student
ADD birthday DATE;

INSERT INTO Student VALUES
(01, 'Cara Elyssa Dulay', '3rd', 25, 'BSIT', '2015-11-19'),
(02, 'Ian Vincent Bartolome', '2nd', 20, 'BSCS', '2020-06-12'),
(03, 'Agatha Gwen Tagala', '3rd', 26, 'BSIT', '2018-01-17'),
(04, 'Patrick Sudaria', '1st', 17, 'BSPHY', '2022-04-10'),
(05, 'John Dani Oicangi', '3rd', 22, 'BSME', '2020-12-12');

SELECT * FROM Student
ORDER BY course;

SELECT *
FROM Student
WHERE yearLvl = '3rd';

SELECT *
FROM Student
WHERE course = 'BSIT' OR course = 'BSCS' AND age > 20;

UPDATE Student
SET age = 18
WHERE studID = 04;

UPDATE Student
SET age = 25
WHERE yearLvl = '3rd';

SELECT COUNT(*)
From Student
WHERE yearLvl = '3rd';

SELECT SUM(age)
From Student
WHERE course = 'BSIT';

SELECT course, SUM(age) AS "Total age"
FROM Student
GROUP BY course;
    
SELECT course, SUM(age) AS "Total age no lower 20"
FROM Student
GROUP BY course
HAVING SUM(age)>20;    

SELECT AVG(age) AS "Average age"
FROM Student
WHERE yearLvl = '3rd';

SELECT AVG(age) AS "Average age per Year Level"
FROM Student
Group by yearLvl;

SELECT AVG(age>20 AND age<24) AS "Average age between 20 and 24"
FROM Student
Group by yearLvl;

DELETE FROM Student
WHERE age < 20;