CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(50) NOT NULL,
    semail VARCHAR(50) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO student
(rollno, sname, semail, city)
VALUES
(101, "Rahul", "rahul101@gmail.com", "kolkata"),
(102, "Rina", "rina_star@outlook.com", "delhi"),
(103, "Reema", "reema123@yahoo.com", "mumbai"),
(104, "Ronak", "ronak_office@mail.com", "bangalore"),
(105, "Raju", "raju.official@gmail.com", "kolkata"),
(106, "Rana", "rana12@eedu.in", "chennai");

INSERT INTO student
(rollno, sname, semail, city)
VALUES
(107, "Rima", "rima1@gmail.com", "kolkata");

SELECT * FROM student;

/*  .......Query 1: Find students whose names start with "Ra" ......*/
SELECT sname FROM student WHERE sname LIKE 'Ra%';

/* .....Query 2: Find students with emails that contain "gmail".....*/
SELECT sname FROM student WHERE semail LIKE '%gmail%';

/* .......Query 3: Find students whose name is exactly 4 characters long and starts with R
 ......*/
SELECT * FROM student WHERE sname LIKE 'R___'; 


/*.......Query 4: Find students whose email starts with "r" followed by exactly 4 characters ....*/
SELECT sname, semail FROM student WHERE semail LIKE 'r____@%';


/*..... Query 5: Find students whose name has "a" as the second letter and contains "n" later....*/
SELECT * FROM student WHERE sname LIKE '_a%';
