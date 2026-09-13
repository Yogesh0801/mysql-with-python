CREATE DATABASE college;
USE college;
CREATE TABLE students (
student_id INT,
name VARCHAR(50),
age INT
);
show tables;

# comment in mysql
--  select * from students;
/* this is multi line comment*/

# constraints
# not null
CREATE TABLE student (
    student_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT
);
# unique
CREATE TABLE students1 (
    student_id INT,
    email VARCHAR(100) UNIQUE
);

# primary key
CREATE TABLE students2 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

# Default
CREATE TABLE students3 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50) DEFAULT 'Bangalore'
);
# check
CREATE TABLE students4 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT CHECK (age >= 18)
);

# foreign key
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);