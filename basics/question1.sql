/* Create a database for your company xyz.
	step1: create a table inside this DB to store employee info(id,name,salary)
    step2: Add following information in DB:
		1, "adam", 25000
		2, "bob", 30000
		3, "casey", 40000
	step3: Select and view all your table data
        
    */

CREATE DATABASE xyz;
USE xyz;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employee;


