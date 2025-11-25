WITH
current_checks AS (
    SELECT
        s1.user_id,
        s1.plan_name AS current_plan,
        s1.monthly_amount AS current_monthly_amount,
        s1.event_date AS last_event_date   -- most recent event
    FROM subscription_events s1
    WHERE s1.event_date = (
        SELECT MAX(s2.event_date)
        FROM subscription_events s2
        WHERE s2.user_id = s1.user_id
    )
),
user_stats AS (
    SELECT 
        s.user_id,
        MAX(s.monthly_amount) AS max_historical_amount,  
        MIN(s.event_date) AS first_event_date,     -- first time user subscribed
        SUM(CASE WHEN s.event_type = 'downgrade' THEN 1 ELSE 0 END) AS downgrade_count
    FROM subscription_events s
    GROUP BY s.user_id
)
SELECT 
    u.user_id,
    c.current_plan,
    c.current_monthly_amount,
    u.max_historical_amount,
    DATEDIFF(c.last_event_date, u.first_event_date) AS days_as_subscriber
FROM user_stats u
JOIN current_checks c ON u.user_id = c.user_id   
WHERE
    c.current_monthly_amount > 0  -- active plan
    AND u.downgrade_count >= 1      -- had a downgrade
    AND c.current_monthly_amount < 0.5 * u.max_historical_amount   -- paying less than 50% now
    AND DATEDIFF(c.last_event_date, u.first_event_date) >= 60 -- subscribed for 60+ days
ORDER BY
    days_as_subscriber DESC,
    u.user_id ASC;