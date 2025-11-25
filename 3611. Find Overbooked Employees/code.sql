WITH
process_1 AS(
    SELECT 
        employee_id
        ,SUM(duration_hours) AS total_duration
    FROM meetings
    GROUP BY employee_id, WEEKOFYEAR(meeting_date), YEAR(meeting_date)
)
SELECT
    e.employee_id
    ,e.employee_name
    ,e.department
    ,COUNT(e.employee_id) AS meeting_heavy_weeks
FROM process_1 p
JOIN employees e
    ON p.employee_id=e.employee_id
WHERE p.total_duration>20
GROUP BY e.employee_id
HAVING COUNT(e.employee_id)>1
ORDER BY meeting_heavy_weeks DESC, e.employee_name