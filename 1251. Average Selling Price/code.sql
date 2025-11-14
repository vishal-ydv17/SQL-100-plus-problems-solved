--# Write your MySQL query statement below

SELECT p.product_id,
    IFNULL(
        ROUND( SUM(IFNULL(u.units*p.price ,0)) / 
        NULLIF(SUM(u.units),0)
        ,2)
    ,0) AS average_price
FROM prices p
LEFT JOIN unitssold u
    ON p.product_id=u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id