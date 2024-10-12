-- 15. Write a SQL query to find the top 5 best paid employees.

SELECT * FROM employees ORDER BY salary desc LIMIT 5;