-- 17. Write a SQL query to find all town names that end with a vowel (a,o,u,e,i).
-- 17. Write a SQL query to find all town names that start with a vowel (a,o,u,e,i).
SELECT name 
FROM towns
WHERE right(name, 1) in ("a", "o", "i", "u", "e");


SELECT name 
FROM towns
WHERE left(name, 1) in ("a", "o", "i", "u", "e");