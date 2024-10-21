-- 9. Write a SQL query to find all departments and the average salary for each of them.

SELECT 
    d.name, ROUND(AVG(e.salary), 2) as AvgSalary
FROM
    employees AS e
        JOIN
    departments AS d ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name;


SELECT 
    d.name, ROUND(AVG(e.salary), 2) AS AvgSalary
FROM
    employees AS e,
    departments AS d
WHERE
    e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID;  