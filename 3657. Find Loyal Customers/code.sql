SELECT customer_id
FROM customer_transactions
GROUP BY customer_id
HAVING 
    /*at least 3 purchase*/
    SUM(CASE WHEN transaction_type = 'purchase' THEN 1 ELSE 0 END) >= 3 
    /*at least 30 days*/
    AND DATEDIFF(MAX(transaction_date), MIN(transaction_date)) >= 30 /
    /*refund rate*/
    AND (SUM(CASE WHEN transaction_type = 'refund' THEN 1 ELSE 0 END) / COUNT(customer_id)) < 0.2 
ORDER BY customer_id;