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
