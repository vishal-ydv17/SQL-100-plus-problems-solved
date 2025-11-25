WITH customer_summary AS (
    SELECT
        customer_id,
        COUNT(customer_id) AS total_orders,
        SUM(
            CASE 
                WHEN (TIME(order_timestamp) BETWEEN '11:00:00' AND '14:00:00')
                  OR (TIME(order_timestamp) BETWEEN '18:00:00' AND '21:00:00')
                THEN 1 ELSE 0
            END
        ) AS peak_hour_orders,
        SUM(CASE WHEN order_rating IS NOT NULL THEN 1 ELSE 0 END) AS rated_orders,
        ROUND(AVG(CASE WHEN order_rating IS NOT NULL THEN order_rating END), 2) AS average_rating
    FROM restaurant_orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_orders,
    ROUND((peak_hour_orders / total_orders) * 100, 0) AS peak_hour_percentage,
    average_rating
FROM customer_summary
WHERE 
    total_orders >= 3
    AND (peak_hour_orders / total_orders) >= 0.6
    AND (rated_orders / total_orders) >= 0.5
    AND average_rating >= 4
ORDER BY average_rating DESC, customer_id DESC;