/* INNER JOIN........*/
CREATE DATABASE college1;
USE college1;

CREATE TABLE student2(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO student2
(id, name)
VALUES
(101, "adan"),
(102, "Bob"),
(103, "casey");

CREATE TABLE IF NOT EXISTS course(
	id INT PRIMARY KEY,
    course VARCHAR(50) NOT NULL
);

INSERT INTO course
(id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(104, "computer science");


SELECT * FROM student2;
SELECT * FROM course;

SELECT *
FROM student2
INNER JOIN course
ON student2.id = course.id;
/* .........or we can write this.........*/
SELECT *
FROM student2 as s
INNER JOIN course as c
ON s.id = c.id;

/* ............LEFT JOIN............*/
SELECT *
FROM student2 as s
LEFT JOIN course as c
ON s.id = c.id;


/*  ............RIGHT JOIN............*/
SELECT *
FROM student2 as s
RIGHT JOIN course as c
ON s.id = c.id;


/* ............FULL JOIN............*/
SELECT *
FROM student2 as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM student2 as s
RIGHT JOIN course as c
ON s.id = c.id;


/* ............LEFT EXCLUSIVE JOIN............*/
SELECT *
FROM student2 as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;

/* ............RIGHT EXCLUSIVE JOIN............*/
SELECT *
FROM student2 as s
RIGHT JOIN course as c
ON s.id = c.id
WHERE s.id IS NULL;


/* ............SELF JOIN............*/
CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT
);
INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "adan", 103),
(102, "Bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;



/* ....................................UNION.................................*/

SELECT name FROM employee
UNION 
SELECT name FROM employee; /* ...UNION didn't gave duplicate values */

SELECT name FROM employee
UNION ALL
SELECT name FROM employee; /* ...UNION ALL gave duplicate values */


