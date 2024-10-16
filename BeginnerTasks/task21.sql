-- 21. Write a SQL query to find the average salary in the department #1.

SELECT 
    ROUND(AVG(salary)) AS AverageSalary
FROM
    employees AS e
WHERE
    e.DepartmentID = 1;