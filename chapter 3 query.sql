-- special and advance operator

use college;
show tables;
-- in
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR' OR department = 'Finance';
-- instead of this Write this 

SELECT * FROM employees WHERE department IN ('IT', 'HR', 'Finance');

SELECT * FROM employees WHERE department NOT IN ('IT', 'HR');

--  between
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 50000;

SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 50000;

-- LIKE
SELECT * FROM employees WHERE employee_name LIKE 'R%';

SELECT * FROM employees WHERE employee_name LIKE '%a';

SELECT * FROM employees WHERE employee_name LIKE '%vi%';

SELECT * FROM employees WHERE employee_name LIKE '_a%';

# is null
SELECT * FROM employees WHERE email IS NULL;
# is not null
SELECT * FROM employees WHERE email IS NOT NULL;

# exists this is not working because department table not there
SELECT * FROM department d WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

#any
SELECT * FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);

# all
SELECT * FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE department = 'HR'
);