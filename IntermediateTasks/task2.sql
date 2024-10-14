-- 2. Write a SQL query to -- find all employees whose MiddleName is the same as the first letter of their town.

SELECT * FROM employees e
INNER JOIN addresses a on e.addressID = a.AddressID
INNER JOIN towns t on a.TownID = t.townID  
WHERE e.middlename = left(t.name, 1);