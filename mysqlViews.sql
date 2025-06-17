CREATE VIEW  view1 AS 
SELECT rollno, name, marks FROM student1;

SELECT * FROM view1
WHERE marks > 90;

DROP VIEW view1;
