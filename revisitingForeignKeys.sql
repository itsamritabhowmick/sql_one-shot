USE college1;
CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO dept
(id, name)
VALUES
(101, "English"),
(102, "IT");

SELECT *FROM dept;
UPDATE dept 
SET id = 103
WHERE id = 102;


CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teacher
(id, name, dept_id)
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

