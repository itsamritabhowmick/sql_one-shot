CREATE DATABASE demo;
USE demo;
CREATE TABLE temp1(
	id INT UNIQUE
    /* PRIMARY KEY (id) 
    PRIMARY KEY (id, name) ....combination of two can be primary key
    ...WE can also write like this*/
);
INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(102);

SELECT * FROM temp1;

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;

