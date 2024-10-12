-- 7. Write a SQL query to find the names of all employees whose first name starts with "SA".

SELECT firstname, lastname FROM employees WHERE firstname like "SA%";

SELECT firstname, lastname FROM employees WHERE left(firstname, 2) like "sa";