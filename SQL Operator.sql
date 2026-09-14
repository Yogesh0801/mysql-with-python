# operators
use college;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(30),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(30),
    email VARCHAR(100)
);
insert into employees(employee_id,employee_name,age,gender,department,designation,salary,joining_date ,city ,email) values(
101, 'Rahul Sharma', 28, 'Male', 'IT', 'Software Developer', 55000, '2022-06-15', 'Bangalore', 'rahul@gmail.com'),
(102, 'Priya Singh', 26, 'Female', 'HR', 'HR Executive', 42000, '2023-01-10', 'Mumbai', 'priya@gmail.com'),
(103, 'Amit Kumar', 32, 'Male', 'Finance', 'Accountant', 48000, '2021-03-20', 'Delhi', 'amit@gmail.com'),
(104, 'Sneha Patil', 29, 'Female', 'IT', 'Data Analyst', 60000, '2022-09-05', 'Pune', 'sneha@gmail.com'),
(105, 'Vikram Reddy', 35, 'Male', 'Sales', 'Sales Manager', 70000, '2020-11-12', 'Hyderabad', 'vikram@gmail.com'),
(106, 'Anjali Verma', 27, 'Female', 'Marketing', 'Marketing Executive', 45000, '2023-04-18', 'Bhopal', 'anjali@gmail.com'),
(107, 'Karan Mehta', 31, 'Male', 'IT', 'Senior Developer', 85000, '2019-08-25', 'Bangalore', 'karan@gmail.com'),
(108, 'Neha Joshi', 25, 'Female', 'HR', 'Recruiter', 40000, '2024-02-01', 'Indore', 'neha@gmail.com'),
(109, 'Rohit Gupta', 30, 'Male', 'Finance', 'Financial Analyst', 65000, '2021-12-10', 'Delhi', 'rohit@gmail.com'),
(110, 'Pooja Shah', 29, 'Female', 'Sales', 'Sales Executive', 50000, '2022-07-22', 'Mumbai', 'pooja@gmail.com');

-- Arithmatic operator
select(12+83);
SELECT salary + 5000 FROM employees;
SELECT salary - 2000 FROM employees;
SELECT salary * 12 FROM employees;
SELECT salary / 12 FROM employees;
SELECT 10 % 3;

-- comparison operator
SELECT * FROM employees WHERE salary < 50000;
SELECT * FROM employees WHERE salary >= 50000;
SELECT * FROM employees WHERE age <= 25;
SELECT * FROM employees WHERE salary = 50000;
SELECT * FROM employees WHERE department != 'IT';
# same
SELECT * FROM employees	WHERE department <> 'IT';
SELECT * FROM employees WHERE salary > 50000;

-- Logical operator
-- and
SELECT * FROM employees WHERE department = 'IT' AND salary > 45000;
--  or
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';
-- not
SELECT * FROM employees WHERE NOT department = 'IT';

