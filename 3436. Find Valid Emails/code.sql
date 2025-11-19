SELECT user_id, email
FROM users
WHERE email REGEXP 
    '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'   
ORDER BY user_id ASC;       
          
    -- ^                 → start of string
    -- [A-Za-z0-9_]+     → username part: 1 or more letters, numbers, or underscore
    -- @                 → literal @ symbol
    -- [A-Za-z]+         → domain name: 1 or more letters (no digits allowed)
    -- \\.com            → literal ".com" (double slash because MySQL regex needs escaping)
    -- $                 → end of string