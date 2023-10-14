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
