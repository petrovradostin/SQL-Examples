-- 14. Write a SQL query to find all employees that have salary more than 50000. 
-- Order them in increasing and decreasing order by salary.

SELECT * FROM employees WHERE salary >= 50000 ORDER BY salary desc;
SELECT * FROM employees WHERE salary >= 50000 ORDER BY salary asc;