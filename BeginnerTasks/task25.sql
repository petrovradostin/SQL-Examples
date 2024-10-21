-- 25. Write a SQL query to find the names of all employees whose last name is exactly 5 characters long.

SELECT 
    e.firstname, e.lastname
FROM
    employees AS e
WHERE
    e.LastName LIKE '_____';
    
SELECT 
    e.firstname, e.lastname
FROM
    employees AS e
WHERE
    CHAR_LENGTH(e.lastname) = 5;    