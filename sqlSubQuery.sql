/*.......................SQL SUB QUERY(using WHERE)..................................................
>> Example 1:
# get names of all students who scored more than class average

step1: Find the avg of class
step2: Find the names of students with marks > avg */

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

 SELECT AVG(marks) 
 FROM student1;
 
SELECT name
FROM student1
WHERE marks > 74.3333;

SELECT name, marks
FROM student1
WHERE marks > (SELECT AVG(marks) FROM student1);


/* >>Example 2
Find the names of all students with even roll numbers.

step1: Find the even roll numbers
step2: Find the names of students with even roll no
*/

SELECT rollno
FROM student1
WHERE rollno % 2 = 0;

SELECT name
FROM student1
WHERE rollno IN (102, 104, 106);


SELECT name, rollno
FROM student1
WHERE rollno IN (
	SELECT rollno
	FROM student1
	WHERE rollno % 2 = 0);
    
    
    
/*.......................SQL SUB QUERY(using FROM)..................................................

*/
SELECT MAX(marks)
FROM (SELECT * FROM student1 WHERE city = "Delhi") AS temp;

SELECT MAX(marks)
FROM (SELECT * FROM student1 WHERE city = "Mumbai") AS temp;



/*.......................SQL SUB QUERY(using SELECT).........................*/

SELECT (SELECT marks FROM student1), name
FROM student1; /* it gives us an error*/

