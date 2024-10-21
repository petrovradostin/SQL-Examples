-- 12. Write a SQL query to find all employees along with their managers. 
-- For employees that do not have manager display the value "(no manager)".

SELECT 
    CONCAT_WS(' ', e.firstname, e.lastname) AS Employee,
    CONCAT_WS(' ', m.firstname, m.lastname) AS Manager
FROM
    employees AS e,
    employees AS m
WHERE
    e.ManagerID = m.EmployeeID 
UNION SELECT 
    CONCAT_WS(' ', firstname, lastname) AS Employee,
    '(no manager)' AS Manager
FROM
    employees
WHERE
    ManagerID IS NULL;

    

SELECT 
    CONCAT(e.firstname, ' ', e.lastname) AS EmployeeName,
    IFNULL(CONCAT(m.firstname, ' ', m.lastname),
            '(no manager)') AS ManagerName
FROM
    employees AS e
        LEFT JOIN
    employees AS m ON e.managerid = m.employeeid;