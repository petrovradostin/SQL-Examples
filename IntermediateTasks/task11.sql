-- 11. Write a SQL query to find all managers that have exactly 5 employees. 
-- Display their first name and last name.

SELECT 
    m.firstname, m.lastname, count(e.EmployeeID) as EmployeeNum
FROM
    employees AS m,
    employees AS e
WHERE
    e.ManagerID = m.EmployeeID
GROUP BY e.ManagerID
HAVING COUNT(e.EmployeeID) = 5; 



SELECT 
    m.firstname, m.lastname, employeecount
FROM
    employees AS m
        JOIN
    (SELECT 
        managerid, COUNT(*) AS EmployeeCount
    FROM
        employees
    GROUP BY ManagerID
    HAVING EMployeeCount = 5) AS e ON e.ManagerID = m.employeeid;
    
    
