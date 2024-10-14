-- 1. Write a SQL query to find all employees and their address.

SELECT e.firstname, e.lastname, a.addresstext
FROM employees e
JOIN addresses a on e.AddressID = a.AddressID;

SELECT e.firstname, e.lastname, a.addresstext, t.name
FROM employees e
JOIN addresses a on e.AddressID = a.AddressID
JOIN towns as t on a.TownID = t.TownID;

SELECT e.firstname, e.lastname, a.addresstext, t.name
FROM employees e,  addresses a, towns t
WHERE e.AddressID = a.AddressID and a.TownID = t.TownID;