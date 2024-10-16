-- 22. Write a SQL query to find the average salary  in the "Sales" department.

SELECT 
    ROUND(AVG(salary)) AS AverageSalary
FROM
    employees AS e
        JOIN
    departments AS d ON e.DepartmentID = d.DepartmentID
        AND d.name = 'Sales'; 