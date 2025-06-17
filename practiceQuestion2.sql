/* Question 2....
Write a query to find average marks in each city in ascending order.
*/

SELECT city, AVG(marks)
FROM student1
GROUP BY city
ORDER BY city ASC;

/* Similar one...*/
SELECT city, AVG(marks)
FROM student1
GROUP BY city
ORDER BY avg(marks) DESC;
