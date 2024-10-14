-- 4. Write a SQL query to find all employees that have manager, along with their manager and their address.

SELECT 
    CONCAT(e.firstname, ' ', e.lastname) AS EmployeeName,
    ea.addresstext AS EmployeeAddress,
    CONCAT(m.firstname, ' ', m.lastname) AS ManagerName,
    ma.addresstext AS ManagerAddress
FROM
    employees e,
    employees m,
    addresses ea,
    addresses ma
WHERE
    e.ManagerID = m.EmployeeID AND e.AddressID = ea.AddressID AND m.AddressID = ma.AddressID;
    
    

SELECT 
    CONCAT(e.firstname, ' ', e.lastname) AS EmployeeName,
    ae.addresstext AS EmployeeAddress,
    CONCAT(m.firstname, ' ', m.lastname) AS ManagerName,
    am.addresstext AS ManagerAddress
FROM
    employees e
        JOIN
    employees m ON e.ManagerID = m.EmployeeID
        JOIN
    addresses ae ON ae.AddressID = e.AddressID
        JOIN
    addresses am ON am.AddressID = m.AddressID;