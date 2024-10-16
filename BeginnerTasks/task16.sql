-- 16. Write a SQL query to find the average salary of employees who have been hired before year 2000 incl. 
-- Round it down to the nearest integer.

SELECT floor(avg(salary)) as AverageSalary
FROM employees
WHERE year(HireDate) <= 2000;

SELECT round(avg(salary)) as AverageSalary
FROM employees
WHERE year(HireDate) <= 2000;