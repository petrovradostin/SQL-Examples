-- 11. Write a SQL query to find the names of all employees whose salary is 25000, 14000, 12500 or 23600.

SELECT firstname, lastname, round(salary, 2) as salary FROM employees WHERE salary in (25000, 14000, 12500, 23600);