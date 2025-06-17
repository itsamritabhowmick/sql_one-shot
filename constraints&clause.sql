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
SELECT name, marks FROM student1;
SELECT city FROM student1;
SELECT DISTINCT city FROM student1;  /* ....DISTINCT shows only unique values */
/*......WHERE CLAUSE.....*/
SELECT *
FROM student1
WHERE marks > 80;

SELECT *
FROM student1
WHERE city = "Mumbai";

SELECT *
FROM student1
WHERE marks > 80 AND city = "Mumbai";

SELECT *
FROM student1
WHERE marks+10 > 100;

SELECT *
FROM student1
WHERE marks = 93;

SELECT *
FROM student1
WHERE marks > 80 OR city = "Mumbai";

SELECT *
FROM student1
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student1
WHERE city IN ("Delhi","Mumbai");

SELECT *
FROM student1
WHERE city IN ("Delhi","Mumbai","Gurgaon"); /* ...doesn't matter if the city doesn't exists in database*/

SELECT *
FROM student1
WHERE city IN ("Faridabad","Gurgaon"); /* here no error occur just a empty table shown*/

SELECT *
FROM student1
WHERE city NOT IN ("Delhi","Mumbai");


/*....LIMIT CLAUSE.....*/
SELECT * FROM student1 LIMIT 3;

SELECT *
FROM student1
WHERE marks > 75
LIMIT 3;

/* ....ORDER BY CLAUSE......*/
SELECT *
FROM student1
ORDER BY city ASC;

SELECT *
FROM student1
ORDER BY marks ASC;   /* ..To get 3 class Toppers */

/*.....Aggregate Functions.....*/
SELECT MAX(marks) 
FROM student1;

SELECT MIN(marks) 
FROM student1;

SELECT AVG(marks) 
FROM student1;

SELECT COUNT(rollno) 
FROM student1;

/*.....GROUP BY CLAUSE.....
Count no of students in each city...*/
SELECT city, COUNT(name)
FROM student1
GROUP BY city;

SELECT city, AVG(marks)
FROM student1
GROUP BY city;


/*.......HAVING CLAUSE.......
# count no of students in each city where max marks cross 90 ....*/
USE college1;

SELECT city, COUNT(name)
FROM student1
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city
FROM student1
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;

