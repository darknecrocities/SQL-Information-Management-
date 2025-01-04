-- Step 1: Create the database
CREATE DATABASE CompanyDB;

-- Step 2: Use the database
USE CompanyDB;

-- Step 3: Create tables
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2)
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    department_id INT,
    start_date DATE,
    end_date DATE
);

-- Step 4: Insert data into the departments table
INSERT INTO departments (department_name)
VALUES ('Sales'),
       ('Marketing'),
       ('Engineering'),
       ('Human Resources');

-- Step 5: Insert data into the employees table
INSERT INTO employees (first_name, last_name, department_id, hire_date, salary)
VALUES 
('John', 'Doe', 1, '2020-01-15', 50000.00),
('Jane', 'Smith', 2, '2021-06-20', 60000.00),
('Robert', 'Johnson', 3, '2019-09-05', 75000.00),
('Emily', 'Davis', 4, '2018-02-11', 45000.00);

-- Step 6: Insert data into the projects table
INSERT INTO projects (project_name, department_id, start_date, end_date)
VALUES 
('Product Launch', 1, '2022-01-01', '2022-12-31'),
('Marketing Campaign', 2, '2022-03-15', '2022-10-31'),
('Website Overhaul', 3, '2022-06-01', '2023-06-01');
