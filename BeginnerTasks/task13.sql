-- 13. Write a SQL query to find the names of all employees who are hired before their managers.

SELECT e.firstname, e.lastname, e.HireDate, e.ManagerID, m.EmployeeID, m.firstname, m.lastname, m.HireDate
FROM employees as e, employees m
WHERE e.managerID = m.employeeID and e.HireDate < m.HireDate;