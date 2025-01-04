
# SQL Learning & Practice 📚💻

Welcome to the SQL Learning & Practice repository! This repository is designed to provide resources, tutorials, and exercises to help you become proficient in SQL (Structured Query Language). Whether you're a beginner or someone looking to improve your skills, this repo will guide you through essential SQL concepts, commands, and practical exercises.

## Table of Contents 📑

- [Introduction to SQL](#introduction-to-sql)
- [SQL Commands](#sql-commands)
  - [Data Definition Language (DDL)](#data-definition-language-ddl)
  - [Data Manipulation Language (DML)](#data-manipulation-language-dml)
  - [Data Control Language (DCL)](#data-control-language-dcl)
  - [Transaction Control Language (TCL)](#transaction-control-language-tcl)
  - [SQL Clauses and Operators](#sql-clauses-and-operators)
  - [SQL Joins](#sql-joins)
  - [SQL Grouping and Sorting](#sql-grouping-and-sorting)
- [Useful YouTube Channels](#useful-youtube-channels)
- [SQL Resources](#sql-resources)
- [SQL Practice Platforms](#sql-practice-platforms)
- [Game Practice: SQL-Practice](#game-practice-sql-practice)
- [Additional Learning Materials](#additional-learning-materials)
- [Contributing](#contributing)
- [License](#license)

---

## Introduction to SQL 🎓

SQL (Structured Query Language) is a standard programming language used for managing and manipulating relational databases. It is essential for interacting with databases, from creating tables to querying data.

### Why Learn SQL? 🤔
- SQL is used by most modern relational database management systems (RDBMS).
- It allows for the creation, modification, and management of databases.
- It is an essential skill for data analysis, data engineering, and software development.

---

## SQL Commands 📝

SQL commands are divided into several categories based on their function. Below are the main categories and a description of each.

### Data Definition Language (DDL) 🔨

DDL commands are used to define or modify database structures such as tables, indexes, and schemas.

- **CREATE**: Creates a new database or table.
  ```sql
  CREATE TABLE Students (
      StudentID INT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName VARCHAR(50),
      Age INT
  );
  ```

- **ALTER**: Modifies an existing database object, like adding or dropping a column.
  ```sql
  ALTER TABLE Students ADD Email VARCHAR(100);
  ```

- **DROP**: Deletes a table or database.
  ```sql
  DROP TABLE Students;
  ```

- **TRUNCATE**: Removes all rows from a table without deleting the table itself.
  ```sql
  TRUNCATE TABLE Students;
  ```

- **RENAME**: Renames a table or database.
  ```sql
  RENAME TABLE Students TO Alumni;
  ```

### Data Manipulation Language (DML) 🔧

DML commands are used to manipulate data within existing tables.

- **SELECT**: Retrieves data from a table.
  ```sql
  SELECT FirstName, LastName FROM Students;
  ```

- **INSERT**: Adds new rows of data to a table.
  ```sql
  INSERT INTO Students (StudentID, FirstName, LastName, Age)
  VALUES (1, 'John', 'Doe', 20);
  ```

- **UPDATE**: Modifies existing data.
  ```sql
  UPDATE Students SET Age = 21 WHERE StudentID = 1;
  ```

- **DELETE**: Removes rows from a table.
  ```sql
  DELETE FROM Students WHERE StudentID = 1;
  ```

### Data Control Language (DCL) 🔐

DCL commands are used to control access to data in the database.

- **GRANT**: Provides privileges to users.
  ```sql
  GRANT SELECT ON Students TO User1;
  ```

- **REVOKE**: Removes privileges from users.
  ```sql
  REVOKE SELECT ON Students FROM User1;
  ```

### Transaction Control Language (TCL) 🔄

TCL commands are used to manage transactions within a database.

- **COMMIT**: Saves all changes made in the transaction.
  ```sql
  COMMIT;
  ```

- **ROLLBACK**: Undoes changes made during the transaction.
  ```sql
  ROLLBACK;
  ```

- **SAVEPOINT**: Sets a point within a transaction to which you can roll back.
  ```sql
  SAVEPOINT SavePoint1;
  ```

### SQL Clauses and Operators ⚙️

SQL commands are often combined with various clauses and operators to filter, sort, or group data.

- **WHERE**: Filters records based on a specified condition.
  ```sql
  SELECT * FROM Students WHERE Age > 21;
  ```

- **AND / OR**: Combines multiple conditions.
  ```sql
  SELECT * FROM Students WHERE Age > 21 AND FirstName = 'Jane';
  ```

- **BETWEEN**: Filters results within a range.
  ```sql
  SELECT * FROM Students WHERE Age BETWEEN 20 AND 25;
  ```

- **LIKE**: Searches for a specified pattern.
  ```sql
  SELECT * FROM Students WHERE FirstName LIKE 'J%';
  ```

- **IN**: Matches one of several possible values.
  ```sql
  SELECT * FROM Students WHERE Age IN (20, 22, 25);
  ```

- **IS NULL**: Filters records where the value is NULL.
  ```sql
  SELECT * FROM Students WHERE Email IS NULL;
  ```

### SQL Joins 🔗

SQL Joins are used to combine rows from two or more tables based on related columns.

- **INNER JOIN**: Returns records that have matching values in both tables.
  ```sql
  SELECT Students.FirstName, Orders.OrderDate
  FROM Students
  INNER JOIN Orders
  ON Students.StudentID = Orders.StudentID;
  ```

- **LEFT JOIN (or LEFT OUTER JOIN)**: Returns all records from the left table, along with matching records from the right table.
  ```sql
  SELECT Students.FirstName, Orders.OrderDate
  FROM Students
  LEFT JOIN Orders
  ON Students.StudentID = Orders.StudentID;
  ```

- **RIGHT JOIN (or RIGHT OUTER JOIN)**: Returns all records from the right table, along with matching records from the left table.
  ```sql
  SELECT Students.FirstName, Orders.OrderDate
  FROM Students
  RIGHT JOIN Orders
  ON Students.StudentID = Orders.StudentID;
  ```

- **FULL JOIN (or FULL OUTER JOIN)**: Returns records when there is a match in one of the tables.
  ```sql
  SELECT Students.FirstName, Orders.OrderDate
  FROM Students
  FULL OUTER JOIN Orders
  ON Students.StudentID = Orders.StudentID;
  ```

- **SELF JOIN**: Joins a table with itself.
  ```sql
  SELECT A.FirstName AS 'Student1', B.FirstName AS 'Student2'
  FROM Students A, Students B
  WHERE A.StudentID <> B.StudentID;
  ```

### SQL Grouping and Sorting 🎲

SQL allows you to group and sort data using various clauses and functions.

- **GROUP BY**: Groups rows that have the same values into summary rows.
  ```sql
  SELECT Age, COUNT(*)
  FROM Students
  GROUP BY Age;
  ```

- **HAVING**: Filters groups based on a condition (used with GROUP BY).
  ```sql
  SELECT Age, COUNT(*)
  FROM Students
  GROUP BY Age
  HAVING COUNT(*) > 1;
  ```

- **ORDER BY**: Sorts the result set in ascending or descending order.
  ```sql
  SELECT FirstName, LastName, Age
  FROM Students
  ORDER BY Age DESC;
  ```

- **DISTINCT**: Removes duplicate rows from the result set.
  ```sql
  SELECT DISTINCT Age
  FROM Students;
  ```

---

## Useful YouTube Channels 🎥

- **The Net Ninja 🎮**  
  Focus: SQL, JavaScript, Node.js, and other web technologies.

- **freeCodeCamp.org 🚀**  
  Focus: Full-stack development, SQL, data structures, and algorithms.

- **Programming with Mosh 💻**  
  Focus: SQL, Python, JavaScript, and more.

- **Tech with Tim 🤖**  
  Focus: SQL, Python, and other programming tutorials.

---

## SQL Resources 📚

- **SQLZoo**: Interactive SQL tutorials with a variety of exercises and quizzes.
- **W3Schools SQL Tutorial**: A beginner-friendly resource with clear examples and exercises.
- **SQLBolt**: Interactive lessons and exercises to learn SQL from scratch.
- **LeetCode SQL Practice**: A platform with SQL problems designed for practice and coding interviews.
- **Mode Analytics SQL Tutorial**: A tutorial focusing on SQL for data analytics.

---

## SQL Practice Platforms 🎮

- **SQL-practice 🏅**  
  Description: A platform dedicated to helping learners practice SQL queries through a variety of challenges.
  
- **HackerRank 🏆**  
  Description: Offers SQL problems with an interactive environment.

---

## Game Practice: SQL-Practice 🎮🕹️

Description: A fun, game-like platform for practicing SQL queries and solving challenges!

---

## Additional Learning Materials 🎓

SQL for Data Science - Coursera: A comprehensive course for beginners.
DataCamp SQL Courses: A hands-on learning platform for SQL.

## Contributing 🤝
Feel free to contribute to this repository! You can improve the documentation, add more resources, or even add your own SQL challenges.

To contribute, please fork the repository and create a pull request with your changes. If you're adding a new tutorial or resource, please ensure that it's well-documented and provides value to others.

## License 📜
This project is licensed under the MIT License - see the LICENSE file for details.

## Creator
Created by: Arron Kian Parejas
