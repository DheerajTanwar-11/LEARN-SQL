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

### Types of Commands in SQL =>

1. DQL(Data Query Language) : Use to retrieve data from the table.
2. DDL(Data Definition Language) : Use to create, alter and delete database object like tables, indexes, etc. CREATE, DROP, ALTER, RENAME, TRUNCATE.
3. DML(Data Manipulation Language) : Use to modify the database. INSERT, UPDATE, DELETE
4. DCL(Data Control Language) : Use to grant and revoke permission. GRANT, REVOKE.
5. TCL(Transaction Control Language) : Used to manage transactions. COMMIT, ROLLBACK, START TRANSACTION, SAVEPOINT.

### KEYS

1. PRIMARY KEY : It is a columns in a table that uniquely identifies each row. There is only one primary key in a table and it cannot be `Null` .
2. FOREIGN KEY : A foreign key is a column(or set of columns) in a table that refers to primary key in other tables. There can be multipl foreign key's. Foreign key's can have multiple or null values.
    - `FOREIGN KEY column_name references table_name(column_name)`
    - Cascading for Foreign Key :
        - On Delete Cascade : When we create a foreign key using this option, it deletes the referencing rows in the child
          table when the referenced row is deleted in the parent table which has a primary key.
        - On Update Cascade : When we create a foreign key using this option, the referencing rows are updated in the child
          table when the referenced row is updated in the parent table which has a primary key.

### CONSTRAINST =>

SQL Constrainst are use to specify rules for data in table.

1. `NOT NULL` : Column cannot have null value.
2. `UNIQUE` : All values in column should be unique.
3. `PRIMARY KEY` : Make a column unique & not null but used only for one.
4. `FOREIGN KEY` : Prevent actions that would destroy links between tables.
5. `DEFAULT` : Set the default value to the column.
6. `CHECK` : It can limit the values allowed in the column.

There are more constraints there in SQL but here we have discussed only few of them.

### SELECT Command in SQL =>

`SELECT` command in SQL is use to retrieve data from database tables.<br>
`SELECT * FROM table_name` : Use to retrieve whole table from the database.<br>
`SELECT col1, col2 FROM table_name` : Use to retrieve specific columns from table.<br>
`SELECT DISTINCT col1 FROM table_name` : Use to retrieve unique data from the table.

### WHERE Clause in SQL =>

1. `WHERE` Clause in SQL is used to define some conditions on basis of which we want to retrieve data from the tables.
2. `SELECT * FROM table_name WHERE conditions` : Use to retrieve data from the table on the basis of some conditions.
3. With the `WHERE` clause we can use different operators like Arithmetic Operators(+, -, /, \*, %), Comparison Operators
   (=, !=, <, >, <=, >=), Logical Operators(AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY) and Bitwise Operators(BITWISE AND, BITWISE OR).

### ORDER BY Clause in SQL =>

1. `ORDER BY` Clause in SQL is used to retrieve data from table in a particular order like Ascending Order(ASC) or
   Descending Order(DESC).
2. `SELECT * FROM tableP_name ORDER BY column_name ASC/DESC` : Use to retrieve data from table according to Ascending or
   Descending Order of column.

### Aggregate Functions in SQL =>

1. Aggregate functions perform a calculation on a set of values, and return a single value.
2. Some of these aggregate functions are :
    - COUNT()
    - MAX()
    - MIN()
    - SUM()
    - AVG()

### GROUP BY Clause in SQL =>

1. `GROUP BY` Clause in SQL is used to group rows that have the same values into summary rows. It collects data from
   multiple records and groups the result by one or more column.
2. Generally we use `GROUP BY` clause with some aggregation functions.

### Having Clause in SQL =>

1. It is similar to `WHERE` clause i.e applies some condition on row. It is used when we want to apply a condition after
   grouping.
2. `SELECT * FROM table_name HAVING consition;` : It will return the data on the basis of some condition.

### General Order of applying commands on SQL query =>

1. `SELECT`Columns
2. `FROM`table_name
3. `WHERE`condition
4. `GROUP BY`columns
5. `HAVING`condition
6. `ORDER BY` columns ASC/DESC

### UPDATE command in SQL query =>

1. `UPDATE` command is used to update existing rows in the table.
2. `UPDATE table_name SET col1 = val1 WHERE col1 = "A";` : This command will UPDATE the columns value to val1 where col1 has
   value "A".

### DELETE Command in SQL query =>

1. `DELETE` command is used to delete existing rows in the table.
2. `DELETE FROM table_name WHERE condition;` : This command will delete the row which meets the condition.

### Safe Update Mode in SQL =>

1. By default in MySQL safe update mode is always ON so that we do not run UPDATE or DELETE query on any sensitive data by
   mistake.
2. To run those queries first we need to turn off the Safe Update Mode by runnning a query `SET SQL_SAFE_UPDATES = 0` and to
   turn on the Safe Update Mode, run the query `SET SQL_SAFE_UPDATES = 1`.

### ALTER Command in SQL =>

1. `ALTER` command is used to alter the table. Alter means to make changes in the schema of the table like Adding or Deleting the column Or Renaming the table.
2. `ALTER TABLE table_name ADD COLUMN col_name datatype constraint;` : To add column in the table.
3. `ALTER TABLE table_name DROP COLUMN col_name;` : To delete the column in the table.
4. `ALTER TABLE table_name RENAME TO new_table_name;` : To rename the table.
5. We can also change or modify columns in the table.

### TRUNCATE Command in SQL =>

1. `TRUNCATE` command is used to delete the data of the table.
2. Difference in `DROP` & `TRUNCATE` => `DROP` will delete the table whereas `TRUNCATE` will delete the data of table but
   table will exist.
3. `TRUNCATE TABLE table_name;` : It will delete the data of table.

### JOINS in SQL =>

1. `JOINS` in SQL are used to combine rows from two or more tables, based on related column between them.
2. Types of JOIN : There are 4 types of JOIN in SQL
    - INNER JOIN : Use to get common data present in both tables.
    - LEFT OUTER JOIN : Use to get data that is present in table_1 and table_2 but not that data that is only presentin
      table_2.
    - RIGHT OUTER JOIN : Use to get data that is present in table_2 and table_1 but not that data that in only present in
      table_1.
    - FULL OUTER JOIN : Use to get data of both the tables.
      <img src="https://www.metabase.com/learn/images/sql-join-types/join-types.png" width=600px />

### Syntax of writing JOINS

1. `INNER JOIN` : `SELECT columns FROM table_1 INNER JOIN table_2 ON table_1.column_name = table_2.column_name;`
2. `LEFT JOIN` : `SELECT columns FROM table_1 LEFT JOIN table_2 ON table_1.column_name = table_2.column_name;`
3. `RIGHT JOIN` : `SELECT columns FROM table_1 RIGHT JOIN table_2 ON table_1.column_name = table_2.column_name;`
4. `FULL JOIN` : `SELECT columns FROM table_1 LEFT JOIN table_2 ON table_1.column_name = table_2.column_name UNION SELECT *  FROM table_1 RIGHT JOIN table_2 ON table_1.column_name = table_2.column_name`
5. For `FULL JOIN` we do not have any keyword in MySQL so we do UNION of LEFT JOIN and RIGHT JOIN.
