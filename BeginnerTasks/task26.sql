-- 26. Write a SQL query to display the current date and time in the following format:
-- "`day.month.year hour:minutes:seconds:milliseconds`".

SELECT DATE_FORMAT(NOW(6), '%d.%m.%Y %H:%i:%s.%f') AS Time;

SELECT SUBSTRING(DATE_FORMAT(NOW(), '%d.%m.%Y %H:%i:%s:%f'), 1, 22) as 'Current Date';

SELECT 
    CONCAT(DATE_FORMAT(NOW(), '%d.%m.%Y %H:%i:%s'),
            '.',
            RIGHT(NOW(3), 3)) AS current_datetime;