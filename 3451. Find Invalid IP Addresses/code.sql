WITH invalid_ips AS (
    SELECT 
        ip,
        COUNT(*) as invalid_count
    FROM logs
    WHERE 
        -- Check for invalid IP using regex
        ip REGEXP '^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$' = 0  -- Not exactly 4 numeric octets
        OR ip REGEXP '^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$' = 0  -- Not proper format
        OR ip REGEXP '(^|\\.)0[0-9]'  -- Has leading zeros (but '0' alone is OK)
        #for value greater than 255 -->3rd-digit: 100-255 (valid) and 256-999 (invalid)
        #All 3-digit numbers greater than 255 fall into these groups
        OR ip REGEXP '(^|\\.)25[6-9]'  -- Has numbers 256-259
        OR ip REGEXP '(^|\\.)2[6-9][0-9]'  -- Has numbers 260-299
        OR ip REGEXP '(^|\\.)[3-9][0-9][0-9]'  -- Has numbers 300-999
    GROUP BY ip
)
SELECT 
    ip,
    invalid_count
FROM invalid_ips
ORDER BY invalid_count DESC, ip DESC;