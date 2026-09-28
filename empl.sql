CREATE DATABASE sql_assessment;
USE sql_assessment;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT
);
INSERT INTO employees
(employee_id, employee_name, department, salary, age)
VALUES
(1, 'Arun', 'IT', 45000, 24),
(2, 'Priya', 'HR', 38000, 26),
(3, 'Karthik', 'IT', 52000, 28),
(4, 'Divya', 'Finance', 48000, 25),
(5, 'Rahul', 'Sales', 35000, 23),
(6, 'Meena', 'IT', 60000, 30),
(7, 'Vijay', 'Finance', 55000, 29),
(8, 'Anitha', 'HR', 42000, 27),
(9, 'Suresh', 'Sales', 39000, 24),
(10, 'Nisha', 'IT', 50000, 26);
SELECT * FROM employees;
SELECT employee_name, department, salary
FROM employees;
SELECT *
FROM employees
WHERE department = 'IT';
SELECT *
FROM employees
WHERE salary > 45000;
SELECT *
FROM employees
WHERE age > 25;
SELECT *
FROM employees
ORDER BY salary ASC;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 55000;
SELECT *
FROM employees
WHERE department = 'IT'
  AND salary > 50000
ORDER BY salary DESC;
