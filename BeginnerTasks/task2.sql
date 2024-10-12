-- 2. Write a SQL to find the full name of each employee.

SELECT firstname, middlename, lastname FROM employees;

SELECT concat(firstname, " ", middlename, " ", lastname) FROM employees;

SELECT 
    IF(middlename IS NULL, CONCAT(firstname, ' ', lastname),
        CONCAT(firstname, ' ', middlename, ' ', lastname)) AS 'Full Name'
FROM
    employees;