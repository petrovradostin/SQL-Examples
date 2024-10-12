-- 6. Write an SQL query to find all employees whose salary is bigger than their manager's.

SELECT e.firstname, e.lastname, e.salary as EmployeeSalary, e.ManagerID, m.EmployeeID, m.firstname, m.lastname, m.salary as ManagerSalary
FROM employees as e, employees m
WHERE e.managerID = m.employeeID and e.salary > m.salary;