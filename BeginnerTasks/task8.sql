-- 8. Write a SQL query to find the names of all employees whose last name contains "ei".

SELECT firstname, lastname FROM employees WHERE lastname like "%ei%";

SELECT e.firstname, e.lastname FROM employees as e WHERE e.lastname regexp("ei");