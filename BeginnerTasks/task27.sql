-- 27. Write a SQL query to display the average employee salary by department and job title.

SELECT 
    e.departmentid,
    d.name AS Department,
    e.jobtitle,
    ROUND(AVG(e.salary), 2) AS AvgSalary
FROM
    employees AS e,
    departments AS d
WHERE
    e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID , e.JobTitle;


SELECT 
    e.departmentid,
    d.name AS Department,
    e.jobtitle AS JobTitle,
    ROUND(AVG(e.salary), 2) AS AvgSalary
FROM
    employees AS e
        JOIN
    departments AS d ON d.DepartmentID = e.DepartmentID
GROUP BY e.DepartmentID , e.JobTitle;

ORDER BY a.department_name ASC;



SELECT 
    d.name AS department_name,
    e.jobtitle AS jobtitle,
    e.salary AS salary
FROM
    employees e
        JOIN
    departments d ON e.departmentid = d.departmentID;