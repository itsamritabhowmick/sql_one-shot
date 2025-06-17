/* ...Practice Question 4....
In the student table:
	a) Change the name of column "name" to "full_name
    b) Delete all the students who scored marks less than 80.
    c) Delete the column for grades.

*/

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


/* # Change the name of column "name" to "full_name" */
ALTER TABLE student1
CHANGE COLUMN name full_name VARCHAR(50) NOT NULL;

SELECT * FROM student1;

/*  # Delete all the students who scored marks less than 80. */
SET SQL_SAFE_UPDATES = 0;

DELETE FROM student1
WHERE marks < 80;

SELECT * FROM student1;

/* # Delete the column for grades. */
ALTER TABLE student1
DROP COLUMN grade;

SELECT * FROM student1;





