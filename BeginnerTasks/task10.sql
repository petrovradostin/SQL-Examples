-- 10. Write a SQL query to find the salary of all employees whose salary is in the range [20000…30000].

SELECT firstname, lastname, round(salary, 2) as salary FROM employees WHERE salary between 20000 and 30000;

SELECT firstname, lastname, round(salary, 2) as salary FROM employees WHERE salary >= 20000 and  salary <= 30000;