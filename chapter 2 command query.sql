drop database college;
# DDL
# create
CREATE DATABASE IF NOT EXISTS college;
use college;
select database();
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    course VARCHAR(50),
    marks DECIMAL(5,2)
);
create table teachers(name varchar(20),qualification varchar(20),age int);

# alter
-- add
ALTER TABLE students ADD COLUMN email VARCHAR(200);

ALTER TABLE students ADD COLUMN phone VARCHAR(15),ADD COLUMN city VARCHAR(50);
-- modify 
ALTER TABLE students MODIFY COLUMN age SMALLINT;

-- change / rename
ALTER TABLE students RENAME COLUMN name TO student_name;

-- RENAME TABLE Using ALTER
ALTER TABLE students RENAME TO student_details;

-- drop
ALTER TABLE students DROP COLUMN city;
DROP TABLE students;
DROP TABLE IF EXISTS students;
drop database employee;

-- TRUNCATE 
TRUNCATE TABLE student_details;

-- rename
RENAME TABLE students TO student_details;
RENAME TABLE student_details TO students, teachers TO teacher_details;
drop database college;

# DML
CREATE DATABASE college;

USE college;

CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);
# insert
INSERT INTO students VALUES (1, 'Rahul', 20, 'Python', 85);
# insert more records
INSERT INTO students VALUES
(2, 'Priya', 21, 'Java', 91),
(3, 'Amit', 22, 'SQL', 76),
(4, 'Sneha', 20, 'Python', 88),
(5, 'Ravi', 23, 'Django', 69);

# insert using column
INSERT INTO students (student_id, name, age, course, marks) VALUES (6, 'Neha', 22, 'MySQL', 90);
INSERT INTO students (student_id, name, course) VALUES (7, 'Kiran', 'Python');
INSERT INTO students (student_id, name, age, course, marks) VALUES (8, 'Arjun', NULL, 'Python', 82);

# update
UPDATE students SET marks = 90 WHERE student_id = 1;
# UPDATE Multiple Columns
UPDATE students SET age = 21, course = 'Data Science', marks = 92 WHERE student_id = 1;

-- UPDATE Multiple Rows
UPDATE students SET course = 'Python & AI' WHERE course = 'Python';

-- UPDATE Without WHERE
UPDATE students SET marks = 100;
UPDATE students SET marks = marks + 5;
UPDATE students SET marks = marks + 5 WHERE course = 'Python';

-- delete
DELETE FROM students WHERE student_id = 5;
DELETE FROM students WHERE marks < 40;
DELETE FROM students WHERE age > 25 AND course = 'Python';
DELETE FROM students;

-- DQL
-- Display all columns

SELECT * FROM students;

-- SELECT with calculation
SELECT name, course, age + 5 FROM students;

-- SELECT with alias
SELECT name AS stu_Name, course AS course_Name FROM students;

-- SELECT DISTINCT
SELECT DISTINCT course FROM students;
