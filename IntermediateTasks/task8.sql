-- 8. Write a SQL query to find the full name, salary and department of the employees that take the minimal salary in their department.
SELECT 
    CONCAT(e.firstname, " ", e.lastname) as FullName, e.salary, e.jobtitle, d.name 
FROM
    employees AS e,
    departments AS d
WHERE
    e.DepartmentID = d.DepartmentID
        AND e.Salary = (SELECT 
            MIN(Salary)
        FROM
            employees as e1
        WHERE
            e.DepartmentID = e1.DepartmentID);


SELECT 
    CONCAT_WS(' ', e.firstname, e.middlename, e.lastname) AS FullName,
    e.Salary,
    e.JobTitle,
    e.DepartmentID,
    d.name
FROM
    employees e,
    departments d
WHERE
    (e.salary , e.DepartmentID) IN (SELECT MIN(Salary), DepartmentID FROM employees GROUP BY DepartmentID)
	AND e.DepartmentID = d.DepartmentID
ORDER BY e.DepartmentID;

