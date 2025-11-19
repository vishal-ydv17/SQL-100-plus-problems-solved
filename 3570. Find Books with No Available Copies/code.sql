--# Write your MySQL query statement below
SELECT 
    l.book_id
    ,l.title
    ,l.author
    ,l.genre
    ,l.publication_year
    ,COUNT(b.book_id) AS current_borrowers
FROM library_books l
JOIN borrowing_records b
    ON l.book_id=b.book_id
WHERE b.return_date IS NULL
GROUP BY l.book_id, l.total_copies --#book_is usedin count and total_copies used in having clause
HAVING l.total_copies-COUNT(b.book_id)=0
ORDER BY current_borrowers DESC, l.title ASC

-- You’re using LEFT JOIN but then applying WHERE b.return_date IS NULL.
-- That effectively turns it into an INNER JOIN, because rows with no matching borrowings will be filtered out anyway.
-- So you can just write JOIN instead of LEFT JOIN.