
SELECT 
    email
FROM 
    person as p 
GROUP BY
    email
HAVING
    count(*)>1