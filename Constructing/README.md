2. **Constructing Your Own Database 🛠️**

In this section, you will learn how to **construct your own database** from scratch. This is where you'll practice SQL commands like `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO`, and more.

Steps to Construct Your Own Database:
1. **Create a New Database 💻**:
   - To start, create a new database:
     ```sql
     CREATE DATABASE MyCompanyDB;
     ```
   - Then, use the database:
     ```sql
     USE MyCompanyDB;
     ```

2. **Create Tables 📊**:
   - Next, create the tables to hold your data. Example:
     ```sql
     CREATE TABLE departments (
         department_id INT AUTO_INCREMENT PRIMARY KEY,
         department_name VARCHAR(100)
     );

     CREATE TABLE employees (
         employee_id INT AUTO_INCREMENT PRIMARY KEY,
         first_name VARCHAR(50),
         last_name VARCHAR(50),
         department_id INT,
         hire_date DATE,
         salary DECIMAL(10, 2),
         FOREIGN KEY (department_id) REFERENCES departments(department_id)
     );

     CREATE TABLE projects (
         project_id INT AUTO_INCREMENT PRIMARY KEY,
         project_name VARCHAR(100),
         department_id INT,
         start_date DATE,
         end_date DATE,
         FOREIGN KEY (department_id) REFERENCES departments(department_id)
     );
     ```

3. **Insert Data 📅**:
   - After the tables are created, insert data:
     ```sql
     INSERT INTO departments (department_name)
     VALUES ('Sales'), ('Marketing'), ('Engineering'), ('Human Resources');

     INSERT INTO employees (first_name, last_name, department_id, hire_date, salary)
     VALUES ('John', 'Doe', 1, '2020-01-15', 50000.00),
            ('Jane', 'Smith', 2, '2021-06-20', 60000.00),
            ('Robert', 'Johnson', 3, '2019-09-05', 75000.00),
            ('Emily', 'Davis', 4, '2018-02-11', 45000.00);

     INSERT INTO projects (project_name, department_id, start_date, end_date)
     VALUES ('Product Launch', 1, '2022-01-01', '2022-12-31'),
            ('Marketing Campaign', 2, '2022-03-15', '2022-10-31'),
            ('Website Overhaul', 3, '2022-06-01', '2023-06-01');
     ```
---
**Sample CrowFoot chart**
![image](https://github.com/user-attachments/assets/bc0829ff-679b-4e00-8679-efc47b7f1074)

