SELECT email
FROM (
        SELECT r.email,
            SUM(r.score) AS total_score
        FROM results AS r
        WHERE NOT EXISTS (
                SELECT 1
                FROM optout AS o
                WHERE o.email = r.email
                    AND o.game_id = r.game_id
            )
        GROUP BY r.email
    )
ORDER BY total_score DESC
LIMIT 10;
