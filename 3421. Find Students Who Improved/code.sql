WITH exam_dates AS (
    SELECT 
        student_id,
        subject,
        MIN(exam_date) AS first_date,
        MAX(exam_date) AS last_date
    FROM scores
    GROUP BY student_id, subject
    HAVING COUNT(*) >= 2
)
SELECT 
    e.student_id,
    e.subject,
    s1.score AS first_score,
    s2.score AS latest_score
FROM exam_dates e
JOIN scores s1 ON e.student_id = s1.student_id 
    AND e.subject = s1.subject 
    AND e.first_date = s1.exam_date
JOIN scores s2 ON e.student_id = s2.student_id 
    AND e.subject = s2.subject 
    AND e.last_date = s2.exam_date
WHERE s2.score > s1.score --#it means s2.score = latest_score and s1.score = first_score
ORDER BY e.student_id, e.subject;




-- --by using window function
-- WITH student_scores AS (
--     SELECT 
--         student_id,
--         subject,
--         FIRST_VALUE(score) OVER (
-- --#FIRST_VALUE() always looks from partition start to current row(Default frame)
-- --#The first value is always at the beginning, so we dont use the RANGE
--             PARTITION BY student_id, subject 
--             ORDER BY exam_date
--         ) AS first_score,
--         LAST_VALUE(score) OVER (
--             PARTITION BY student_id, subject 
--             ORDER BY exam_date
--             RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
--         ) AS latest_score,
--         COUNT(*) OVER (
--             PARTITION BY student_id, subject
--         ) AS exam_count
--     FROM Scores
-- )
-- SELECT 
--     student_id,
--     subject,
--     first_score,
--     latest_score
-- FROM student_scores
-- WHERE exam_count >= 2 
--     AND latest_score > first_score
-- GROUP BY student_id, subject, first_score, latest_score
-- ORDER BY student_id, subject;