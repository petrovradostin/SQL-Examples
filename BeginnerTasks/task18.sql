-- 18. Write a SQL query to find all employees with even IDs.

SELECT *
FROM employees
WHERE mod(EmployeeID, 2) = 0;

SELECT *
FROM employees
WHERE EmployeeID % 2 = 0;