--Method 1: Using NOT IN (clear logic)
SELECT employee_id
FROM employees
WHERE salary<30000 AND manager_id NOT IN (SELECT employee_id FROM employees) 
ORDER BY employee_id


--Method 2: Using LEFT JOIN (often more efficient)

-- SELECT e.employee_id
-- FROM employees e
-- LEFT JOIN employees m
--     ON e.manager_id=m.employee_id
-- WHERE e.salary<30000 AND m.employee_id IS NULL
-- ORDER BY e.employee_id 
