-- 19. Write a SQL query to find the names and salaries of the employees that take the minimal salary in the company.

SELECT 
    firstname, lastname, salary
FROM
    employees
WHERE
    Salary = (SELECT MIN(Salary) FROM employees);