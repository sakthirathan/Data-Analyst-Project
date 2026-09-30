USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_salary_rank
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_row_num
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    LAG(salary) OVER (ORDER BY salary DESC) AS previous_salary
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    LAG(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS previous_dept_salary
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    LAG(salary) OVER (ORDER BY salary DESC) AS previous_salary,
    salary - LAG(salary) OVER (ORDER BY salary DESC) AS salary_difference
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_department_rank
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    age,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY age DESC
    ) AS age_row_num
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,
    LAG(salary) OVER (ORDER BY salary DESC) AS previous_salary,
    CASE
        WHEN salary > LAG(salary) OVER (ORDER BY salary DESC) THEN 'Higher'
        WHEN salary < LAG(salary) OVER (ORDER BY salary DESC) THEN 'Lower'
        ELSE 'Same'
    END AS salary_comparison
FROM employees;
USE sql_assessment;

SELECT
    employee_id,
    employee_name,
    department,
    salary,

    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS rownumber ,

    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank,

    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS denserank

FROM employees;