-- 6. Write a SQL query to find the names of all employees from the departments "Sales" and "Finance" whose hire year is between 1995 and 2005.

SELECT concat(e.firstname, " ", e.lastname) as FullName FROM employees as e
JOIN departments d on e.DepartmentID = d.DepartmentID
WHERE d.Name in ("Sales" , "Finance") and year(e.hiredate) between 1995 and 2005;


SELECT concat(e.firstname, " ", e.lastname) as FullName FROM employees as e, departments as d
WHERE e.DepartmentID = d.departmentid and d.name in ("Sales" , "Finance") and year(e.hiredate) between 1995 and 2005; 