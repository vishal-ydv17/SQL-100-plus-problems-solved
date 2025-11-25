SELECT 
    stock_name
    ,SUM(CASE 
        WHEN operation='Sell' THEN price -- This is SUM(sell prices)
        ELSE -price -- This is -SUM(buy prices)
    END) AS capital_gain_loss
FROM stocks
GROUP BY stock_name