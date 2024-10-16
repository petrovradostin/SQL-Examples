-- 1. Write a SQL query to find the name and the length of the name of the town with the longest/shortest name.

SELECT name, char_length(name) as LengthName
FROM towns
WHERE char_length(name) in (SELECT max(char_length(name)) FROM towns);


SELECT name, length(name) as LengthName
FROM towns
WHERE length(name) = (SELECT min(length(name)) FROM towns);