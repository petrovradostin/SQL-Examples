-- 12. Write a SQL query to find all employees that do not have manager.

SELECT firstname, lastname, jobtitle FROM employees WHERE ManagerID is Null;