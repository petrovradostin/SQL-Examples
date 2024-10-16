-- 23. Write a SQL query to find the number of all employees that have manager.

SELECT 
    COUNT(*) AS NumEmployees
FROM
    employees
WHERE
    ManagerID IS NOT NULL;
    
SELECT 
    COUNT(managerid) AS NumEmployees
FROM
    employees;

    
-- 23.1. Write a SQL query to find the number of all employees that have no manager.

SELECT 
    COUNT(*) AS NumEmployees
FROM
    employees
WHERE
    ManagerID IS NULL;

SELECT 
    COUNT(if (managerid, Null, 1)) AS NumEmployees
FROM
    employees;