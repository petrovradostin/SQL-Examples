-- 5. Write a SQL query to find all the employees and the manager for each of them along with the employees that do not have manager.

SELECT e.firstname, e.lastname, m.firstname, m.lastname FROM employees e, employees m
WHERE e.ManagerID = m.EmployeeID
UNION
SELECT e.firstname, e.lastname, null as firstname, null as lastname FROM employees e
WHERE e.ManagerID is Null;



