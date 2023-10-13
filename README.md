## Basics of Database =>

1. Database is a collection of data in different formats.
2. Database management system (DBMS) is a software that is use to manage the database.
3. There are two different types of Databases =>
 <ul><li>Relational Database : Data stored in tables</li>
 <ul><li>MySQL, Oracle, Microsoft SQL Server, Postgre SQL</li></ul>
 <li>Non-Relational Database(No-SQL Database) : Data not stored in tables. </li>
 <ul><li>Mongo DB</li></ul>
 </ul>

### What is SQL(Structured Query Language) =>

1. SQL is a programming language that is used to interact with relational databases.
2. It is used to perform CRUD Operations:
 <ul><li>C : Create</li>
 <li>R : Read</li>
 <li>U : Update</li>
 <li>D : Delete</li></ul>

### Command to use in SQL =>

1. CREATE DATABASE `database_name`; : Use to create new Database
2. CREATE DATABASE IF NOT EXISTS `database_name`; : Use to create new database if database not exist already(It is good practise to use this command to create database)
3. DROP DATABASE `database_name`; : To Delete the database
4. DROP DATABASE IF EXISTS `database_name`; : To delete the database if it exists.
5. USE `database_name`; : To use the database
6. CREATE TABLE `table_name`(column_name1 datatype constraint,
   column_name2 datatype constraint,
   column_name3 datatype constraint); : To create the table.
7. INSERT INTO `table_name` VALUES(value_column1, value_column2, value_column3); : To insert the data into tables.
8. SELECT \* FROM `table_name`; : To see the table.

#### Datatypes in SQL =>

<table>
<tr>
<th>DATATYPE</th>
<th>DESCRIPTION</th>
<th>USAGE</th>
</tr>
<tr>
<td>CHAR</td>
<td>string(0-255), can store characters of fixed length</td>
<td>CHAR(50)</td>
</tr>
<tr>
<td>VARCHAR</td>
<td>string(0-255), can store characters up to given length </td>
<td>VARCHAR(50)</td>
</tr>
<tr>
<td>BLOB</td>
<td>string(0-65535), can store binary large object</td>
<td>BLOB(1000)</td>
</tr>
<tr>
<td>INT</td>
<td>integer( -2,147,483,648 to 2,147,483,647 )</td>
<td>INT</td>
</tr>
<tr>
<td>TINYINT</td>
<td>integer(-128 to 127) </td>
<td>TINYINT</td>
</tr>
<tr>
<td>BIGINT</td>
<td>integer( -9,223,372,036,854,775,808 to
9,223,372,036,854,775,807 )</td>
<td>BIGINT</td>
</tr>
<tr>
<td>BIT</td>
<td>can store x-bit values. x can range from 1 to 64</td>
<td>BIT(2)</td>
</tr>
<tr>
<td>FLOAT</td>
<td>Decimal number - with precision to 23 digits</td>
<td>FLOAT</td>
</tr>
<tr>
<td>DOUBLE</td>
<td>Decimal number - with 24 to 53 digits</td>
<td>DOUBLE</td>
</tr>
<tr>
<td>BOOLEAN</td>
<td>Boolean values 0 or 1</td>
<td>BOOLEAN</td>
</tr>
<tr>
<td>DATE</td>
<td>date in format of YYYY-MM-DD ranging from
1000-01-01 to 9999-12-31</td>
<td>DATE</td>
</tr>
<tr>
<td>TIME</td>
<td>HH:MM:SS</td>
<td>TIME</td>
</tr>
<tr>
<td>YEAR</td>
<td>year in 4 digits format ranging from 1901 to 2155</td>
<td>YEAR</td>
</tr>
</table>

#### Types of Commands in SQL =>

1. DQL(Data Query Language) : Use to retrieve data from the table.
2. DDL(Data Definition Language) : Use to create, alter and delete database object like tables, indexes, etc. CREATE, DROP, ALTER, RENAME, TRUNCATE.
3. DML(Data Manipulation Language) : Use to modify the database. INSERT, UPDATE, DELETE
4. DCL(Data Control Language) : Use to grant and revoke permission. GRANT, REVOKE.
5. TCL(Transaction Control Language) : Used to manage transactions. COMMIT, ROLLBACK, START TRANSACTION, SAVEPOINT.
