-- 3. Write a SQL query to find the email addresses of each employee (by his first and last name).
-- Consider that the mail domain is telerikacademy.com. Emails should look like “John.Doe@telerikacademy.com". 
-- The produced column should be named "Full Email Addresses".

SELECT concat(firstname, ".", lastname, "@telerikacademy.com") as "Full Email Addresses" FROM employees;
