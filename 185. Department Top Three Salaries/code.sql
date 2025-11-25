SELECT 
    d.name AS Department
    ,e.name AS Employee
    ,e.salary AS Salary
FROM employee e
LEFT JOIN department d
    ON e.departmentId=d.id
WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM employee e2
    WHERE e2.departmentId=e.departmentId AND e2.salary>=e.salary
)<=3
ORDER BY Department DESC 
/*
WHERE (subquery) <= 3 Only include employees who are ranked 1st, 2nd, or 3rd in their department
*/