CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE reg(
	id INT PRIMARY KEY,
    cname VARCHAR(50) NOT NULL
);

INSERT INTO reg
(id, cname)
VALUES
(1, "Aman"),
(2, "Riya");

SELECT * FROM reg;