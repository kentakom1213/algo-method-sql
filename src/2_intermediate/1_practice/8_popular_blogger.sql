SELECT *
FROM posts
WHERE author = (
        SELECT author
        FROM posts
        GROUP BY author
        ORDER BY MAX(faves) DESC
        LIMIT 1
    )
ORDER BY date DESC
LIMIT 5;
