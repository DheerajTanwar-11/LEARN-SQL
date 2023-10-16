/*Creating the database 'practise'*/ 
CREATE DATABASE IF NOT EXISTS practise;

/*Deleting the database 'world'*/
DROP DATABASE IF EXISTS world;

/*Using the Database 'practise'*/
USE practise;

/*Showing all the existing database in the server.*/
SHOW DATABASES;

/*Creating the table 'student' in the database 'practise'*/
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

/*Showing the tables in the database in 'practise'*/
SHOW TABLES;

/*Inserting the data into table 'student'*/
INSERT INTO student VALUES(1, "AARAV MISHRA", 23);
INSERT INTO student VALUES(2, "AYUSH RATHORE", 23);
INSERT INTO student VALUES(3, "DHEERAJ TANWAR", 23);

/*Inserting multiple data into table 'student'*/
INSERT INTO student (id, name, age) VALUES (4, "DEVRAJ SINGH", 24), (5, "GAJRAJ SINGH", 24), (6, "HANSRAJ SINGH", 26);

/*Retrieving the data from table 'student'*/
SELECT * FROM student;

/*Dropping the table 'student'*/
DROP TABLE IF EXISTS student;

/*Re Creating the table 'student'*/
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

/*Inserting the data into table 'student'*/
INSERT INTO student (rollno, name, marks, grade, city) VALUES (101, "anil", 78, "C", "Pune"),(102, "bhumika", 93, "A", "Mumbai"),(103, "chetan", 85, "B", "Mumbai"),(104, "dhruv", 96, "A", "Delhi"),(105, "emanuel", 12, "F", "Delhi"),(106, "farah", 82, "B","Delhi");

/*Retrieving the data of table 'student'*/
SELECT * FROM student;

/*Retrieving student name and marks from table 'student'*/
SELECT name, marks FROM student;

/*Retrieving unique/distinct data from table*/
SELECT DISTINCT city from student;

/*Retrieving data from table using WHERE Clause*/
SELECT * FROM student WHERE marks > 70;
SELECT * FROM student WHERE city = "Mumbai";
SELECT * FROM student WHERE marks > 70 AND city = "Mumbai";
SELECT * FROM student WHERE marks > 70 OR city = "Mumbai";
SELECT * FROM student WHERE marks BETWEEN 70 AND 90;
SELECT * FROM student WHERE city IN ("Delhi", "Mumbai");
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

/*Retrieving data from table using ORDER BY Clause*/
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY city ASC;

/*Retrieving data from table using Aggregate functions.*/
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(marks) FROM student;
SELECT SUM(marks) FROM student;

/*Retrieving data from table using GROUP BY clause*/
SELECT city, COUNT(name) FROM student GROUP BY city;

/*Practise Question :- Write a query to find avg marks in each city in ascending order*/
SELECT city, avg(marks) FROM student GROUP BY city ORDER BY avg(marks);

/*Creating new table names as 'payment'*/
CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(50)
);

/*Inserting data into payment*/
INSERT INTO payment (customer_id, customer, mode, city) VALUES(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"), 
(104,"Liam Donovan","Netbanking","Denver"), 
(105,"Sophia Nguyen", "Credit Card", "New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel", "Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez", "Netbanking","Nashville"),
(110,"Jackson Brooks", "Credit Card","Boston");

/*Retrieving all the data of the table payment*/
SELECT * FROM payment;

/*Practise Question :- For the given table payment, find the total payment according to each method*/
SELECT mode, count(customer) FROM payment GROUP BY mode;

/*Retriving data using Having Clause*/
SELECT * FROM payment HAVING mode = "Netbanking";
SELECT count(name),city FROM student GROUP BY city HAVING max(marks) > 70;
