/*  ..Practice Question 3..
Find the total payment according to each payment method.
Table details are same as "details" table
*/

CREATE DATABASE payment_method;

USE payment_method;

CREATE TABLE details(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50) NOT NULL,
    mode VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO details
(customer_id, customer, mode, city)
VALUES
(101, "Olivia Barrett","Netbanking", "Portland"),
(102, "Ethan Sinclair","Credit Card", "Miami"),
(103, "Maya Hernandez","Credit Card", "seattle"),
(104, "Liam Donovan","Netbanking", "Denver"),
(105, "Sophia Nguyen","Credit Card", "New Orleans"),
(106, "Caleb Foster","Debit Card", "Minneapolis"),
(107, "Ava Patel","Debit Card", "Phoneix"),
(108, "Lucas Carter","Netbanking", "Boston"),
(109, "Isabella Martinez","Netbanking", "Nashville"),
(110, "Jackson Brooks","Credit Card", "Boston");

SELECT * FROM details;

SELECT mode, COUNT(customer)
FROM details
GROUP BY mode;


