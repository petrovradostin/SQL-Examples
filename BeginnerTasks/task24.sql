-- 24. Write a SQL query to find all projects that took less than 1 year (365 days) to complete.

SELECT 
    *
FROM
    projects
WHERE
    DATEDIFF(enddate, startdate) < 365;
    
        

SELECT 
    *
FROM
    projects
WHERE
    EndDate IS NOT NULL
        AND TO_DAYS(startdate) + 365 > TO_DAYS(enddate);