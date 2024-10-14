-- 3. Write a SQL query to find all employees that have manager, along with their manager.

SELECT e.firstname, e.lastname, m.firstname, m.lastname FROM employees e, employees m
WHERE e.ManagerID is not Null and e.ManagerID = m.EmployeeID;