CREATE DATABASE function_practice;
USE function_practice;
-- drop table students;
CREATE TABLE students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone varchar(12),
    course VARCHAR(50),
    city VARCHAR(50),
    marks DECIMAL(5,2),
    fees int,
    joining_date DATE,
    joining_time TIME
);
	INSERT INTO students
(student_id, first_name, last_name, email, phone, course, city, marks, fees, joining_date, joining_time)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'Python', 'Bangalore', 85.50, 45000, '2024-06-10', '09:30:00'),

(2, 'Priya', 'Singh', NULL, '9876543211', 'Java', 'Hyderabad', 91.00, 50000, '2024-07-15', '10:00:00'),

(3, 'Amit', 'Kumar', 'amit@gmail.com', NULL, 'MySQL', 'Bhopal', 76.50, 40000, '2025-01-20', '09:15:00'),

(4, 'Sneha', 'Patel', 'sneha@gmail.com', '9876543213', 'Python', 'Indore', 72.00, 45000, '2025-02-12', '11:00:00'),

(5, 'Ravi', 'Verma', NULL, NULL, 'Django', 'Pune', 38.50, 55000, '2025-05-18', '10:30:00'),

(6, 'Neha', 'Gupta', 'neha@gmail.com', '9876543215', 'Java', 'Bangalore', 88.00, 50000, '2025-06-25', '09:45:00'),

(7, 'Kiran', 'Joshi', 'kiran@gmail.com', '9876543216', 'MySQL', 'Mumbai', 59.00, 40000, '2026-01-10', '10:15:00'),

(8, 'Arjun', 'Mehta', 'arjun@gmail.com', NULL, 'Python', 'Delhi', 95.00, 45000, '2026-02-05', '09:00:00'),

(9, 'Pooja', 'Reddy', NULL, '9876543218', 'Django', 'Hyderabad', 67.50, 55000, '2026-03-15', '11:30:00'),

(10, 'Vikas', 'Yadav', 'vikas@gmail.com', '9876543220', 'Java', 'Bhopal', 42.00, 50000, '2026-04-20', '10:45:00');

-- MySQL Functions Practice

-- String Functions
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM students;

SELECT CONCAT_WS(' ', first_name, last_name) AS full_name FROM students;
SELECT CONCAT_WS('-', '2026', '09', '12');
SELECT CONCAT_WS(', ', 'Bangalore', 'Karnataka', 'India');

SELECT first_name, LENGTH(first_name) AS name_length FROM students;

SELECT first_name, LOWER(first_name) AS lowercase_name, UPPER(last_name) AS uppercase_last_name FROM students;

SELECT first_name, UPPER(first_name) AS uppercase_name FROM students;

SELECT TRIM('   Rahul   ') AS trimmed_value;

SELECT email, SUBSTRING(email, 1, 5) AS email_prefix FROM students;

SELECT course, REPLACE(course, 'Python', 'PYTHON') AS updated_course FROM students;
# replace
SELECT first_name, LEFT(first_name, 3) AS short_name FROM students;
select * from students;

SELECT first_name, LEFT(first_name, 3) AS first_3_chars, RIGHT(last_name, 3) AS last_3_chars FROM students;

SELECT first_name, REVERSE(first_name) AS reversed_name FROM students;

SELECT first_name, email, COALESCE(email, 'No Email') AS email_status FROM students;

SELECT first_name, email, phone, COALESCE(email, phone, 'Not Available') AS contact_info FROM students;
SELECT first_name, email, phone, COALESCE( phone,email, 'Not Available') AS contact_info FROM students;

SELECT first_name, marks, IF(marks >= 80, 'Pass', 'Fail') AS result FROM students;

# CASE
SELECT first_name, course, CASE
    WHEN marks >= 90 THEN 'Excellent'
    WHEN marks >= 75 THEN 'Good'
    WHEN marks >= 60 THEN 'Average'
    ELSE 'Needs Improvement'
END AS performance
FROM students;

-- Numeric Functions
SELECT student_id, marks, ROUND(marks, 1) AS rounded_marks FROM students;

SELECT marks, CEIL(marks) AS ceil_value, FLOOR(marks) AS floor_value FROM students;

SELECT marks, ABS(marks - 90) AS diff_from_90 FROM students;

SELECT student_id, MOD(student_id, 2) AS remainder FROM students;

SELECT 5, POWER(5, 2) AS square_value;

SELECT 16, SQRT(16) AS sqrt_value;

SELECT RAND() AS random_number;
select floor(rand()*100);

-- Date and Time Functions
select curdate();
select curdate() as today;
select curtime();

SELECT NOW() AS current_datetime;

SELECT CURDATE() AS today_date, curtime() AS currenttime;

SELECT joining_date, DAY(joining_date) AS day_value, MONTH(joining_date) AS month_value, YEAR(joining_date) AS year_value FROM students;

SELECT joining_date, DATE_ADD(joining_date, INTERVAL 10 DAY) AS after_10_days FROM students;
SELECT joining_date, DATE_SUB(joining_date, INTERVAL 5 DAY) AS before_5_days FROM students;
SELECT joining_date, DATEDIFF(CURDATE(), joining_date) AS days_since_joining FROM students;
SELECT joining_date, TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) AS years_since_joining FROM students;

-- Aggregate Functions
SELECT COUNT(*) AS total_students FROM students;
SELECT SUM(fees) AS total_fees, AVG(marks) AS average_marks, MIN(marks) AS lowest_marks, MAX(marks) AS highest_marks FROM students;
SELECT course, COUNT(*) AS total_students, ROUND(AVG(marks), 2) AS avg_marks FROM students GROUP BY course;
SELECT city, SUM(fees) AS total_fees FROM students GROUP BY city ORDER BY total_fees DESC;

-- Practice Query
SELECT first_name, last_name, city, course, marks
FROM students
WHERE marks >= 80
ORDER BY marks DESC;

# null functions
-- if null
select ifnull(NULL,"not available");
select first_name , ifnull(NULL,"no email") as email from students;
# nullif()
select nullif(10,0);

SELECT coalesce(NULL, NULL, 'Rahul', 'Amit');
SELECT first_name, COALESCE(phone, email, 'No Contact Available') AS contact FROM students;

# conditional function
-- if()
SELECT first_name, marks, 
IF(marks >= 40, 'PASS', 'FAIL') AS result
FROM students;

-- case
SELECT first_name, marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 75 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        WHEN marks >= 40 THEN 'D'
        ELSE 'F'
    END AS grade
FROM students; 

# practical 
SELECT
    student_id,
    CONCAT(first_name, ' ', last_name) AS student_name,
    UPPER(course) AS course,
    marks,
    ROUND(marks, 0) AS rounded_marks,

    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 75 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        WHEN marks >= 40 THEN 'D'
        ELSE 'F'
    END AS grade,

    IF(marks >= 40, 'PASS', 'FAIL') AS result,

    IFNULL(email, 'Not Provided') AS email

FROM students;
