-- 20. Write a SQL query to find the names and salaries of the employees that have a salary
-- that is up to 10% higher than the minimal salary for the company.

SELECT 
    firstname, lastname, salary
FROM
    employees
WHERE
    Salary <= (SELECT (MIN(Salary) * 1.1) FROM employees);
            
SELECT 
    firstname, lastname, salary
FROM
    employees
WHERE
    Salary <= 1.1 *(SELECT MIN(Salary) FROM employees);