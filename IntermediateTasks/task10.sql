-- 10. Write a SQL query to find the count of all employees in each department and for each town.

SELECT 
    d.name as DepartmentName, t.name as TownName, COUNT(e.employeeid) AS EmployeeCount
FROM
    employees AS e,
    departments AS d,
    towns AS t,
    addresses AS a
WHERE
    e.DepartmentID = d.DepartmentID
        AND e.AddressID = a.AddressID
        AND a.TownID = t.TownID
GROUP BY d.Name , t.name; 


SELECT 
    t.name AS TownName,
    d.name AS DepartmentName,
    COUNT(e.employeeid) AS EmployeeCount
FROM
    employees AS e
        JOIN
    departments AS d ON e.DepartmentID = d.DepartmentID
        JOIN
    addresses AS a ON e.AddressID = a.AddressID
        JOIN
    towns AS t ON a.TownID = t.TownID
GROUP BY t.Name , d.Name; 