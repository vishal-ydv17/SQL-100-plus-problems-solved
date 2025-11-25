SELECT
    person_name
FROM (
    SELECT 
        person_name
        ,SUM(weight) OVER (ORDER BY turn) AS total_weight 
    FROM queue
) q
WHERE total_weight<=1000
ORDER BY total_weight DESC LIMIT 1
/*
SUM(weight) OVER (ORDER BY turn)
This creates a running total (cumulative sum) of weights in boarding order.
Example: [250, 350, 400] → totals: [250, 600, 1000].
*/