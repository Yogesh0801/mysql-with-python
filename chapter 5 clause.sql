
use function_practice;
show tables;
-- where
SELECT first_name, course, marks
FROM students WHERE marks > 80
AND course = 'Python';

-- order by
SELECT first_name, marks FROM students ORDER BY marks DESC;
SELECT first_name, course, marks FROM students ORDER BY marks DESC, first_name ASC;

# limit
SELECT first_name, marks FROM students
ORDER BY marks DESC LIMIT 3;

-- group by
SELECT course, COUNT(*) AS total_students
FROM students GROUP BY course;

SELECT course, AVG(marks) AS average_marks
FROM students GROUP BY course;

SELECT course, SUM(fees) AS total_fees
FROM students GROUP BY course;

SELECT course, MIN(marks) AS lowest_marks, MAX(marks) AS highest_marks  FROM students  GROUP BY course;

-- Having
SELECT course, COUNT(*) AS total_students FROM students GROUP BY course HAVING COUNT(*) > 2;

SELECT course, AVG(marks) AS average_marks FROM students GROUP BY course HAVING AVG(marks) >= 80;

SELECT course, COUNT(*) AS total_students,    ROUND(AVG(marks), 2) AS average_marks FROM students WHERE marks >= 30
GROUP BY course HAVING AVG(marks) > 70;

-- offset
select * from students ORDER BY marks DESC;
SELECT first_name, marks FROM students ORDER BY marks DESC LIMIT 3 offset 3;

