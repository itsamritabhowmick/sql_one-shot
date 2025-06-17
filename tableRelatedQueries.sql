/*.... UPDATE ....*/
SET SQL_SAFE_UPDATES = 0;

use college1;
UPDATE student1
SET grade = "O"
WHERE grade ="A" ;

UPDATE student1
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student1
SET marks = 13
WHERE rollno = 105;

UPDATE student1
SET marks = marks+1;

SELECT * FROM student1;

/*.... DELETE ......*/
DELETE FROM student1
WHERE marks < 33;

SELECT * FROM student1;

/* .............ALTER COMMAND...........*/
CREATE DATABASE college1;
USE college1;

CREATE TABLE student1(
	rollno INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    grade VARCHAR(1) NOT NULL,
    city VARCHAR(20)
);

INSERT INTO student1
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student1;

ALTER TABLE student1
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student1
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student1
CHANGE age stu_age INT;
INSERT INTO student1
(rollno, name, marks, grade, city, stu_age)
VALUES
(107, "bishaka", 80, "C", "Pune", 52);

ALTER TABLE student1
DROP COLUMN stu_age;

ALTER TABLE student1
RENAME TO stu;

ALTER TABLE stu
RENAME TO student1;

TRUNCATE TABLE student1;



