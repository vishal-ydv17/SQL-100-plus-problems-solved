WITH RECURSIVE 
main_data AS (
    --Start from the CEO (top-level)
    -- # Base case-> Selects the CEO, because the CEO has no manager (manager_id IS NULL).
    SELECT 
        e.employee_id,
        e.manager_id,
        e.employee_name,
        e.salary,
        1 AS level
    FROM Employees e
    WHERE e.manager_id IS NULL

    UNION ALL

    --Recursively attach subordinates
    -- # m.level + 1: increases the level by 1 for each deeper hierarchy.
    -- # This continues until no more employees have managers listed in the previous level.
    SELECT 
        e.employee_id,
        e.manager_id,
        e.employee_name,
        e.salary,
        m.level + 1 AS level
    FROM Employees e
    JOIN main_data m 
        ON e.manager_id = m.employee_id
)

--another recursive cte to build a mapping of every manager to all subordinates (direct + indirect)
,subtree AS (
     --Each employee is considered their own manager initially.
     --This ensures we include managers themselves in the final budget count.
    SELECT 
        e.employee_id AS manager_id,
        e.employee_id AS employee_id
    FROM Employees e
    
    UNION ALL
     --Finds subordinates (e.employee_id) for each existing manager (s.manager_id).
    SELECT 
        s.manager_id, --s.manager_id = the top-level manager from the previous recursion level
        e.employee_id --e.employee_id = the new subordinate we found in this iteration
    FROM Employees e
    JOIN subtree s 
        ON e.manager_id = s.employee_id --Find all employees whose manager is someone who already appears as an employee in the previous recursive level
)

--Aggregate total team size and budget per manager
,team_sizes_and_budgets AS (
    SELECT 
        s.manager_id AS employee_id,
        COUNT(s.employee_id) - 1 AS team_size,  
         --Counts all people under this manager (including themselves),
         --Subtracts 1 to exclude the manager themselves.
        SUM(e.salary) AS budget
    FROM subtree s
    JOIN Employees e 
        ON s.employee_id = e.employee_id
    GROUP BY s.manager_id
)

SELECT 
    m.employee_id,
    m.employee_name,
    m.level,
    COALESCE(t.team_size, 0) AS team_size,
    --If there’s no team, use default values:team_size = 0
    COALESCE(t.budget, m.salary) AS budget
    --If there’s no team, use default values:budget = m.salary (their own salary only).
FROM main_data m
LEFT JOIN team_sizes_and_budgets t 
    ON m.employee_id = t.employee_id
ORDER BY 
    m.level ASC,
    budget DESC,
    m.employee_name ASC
;
