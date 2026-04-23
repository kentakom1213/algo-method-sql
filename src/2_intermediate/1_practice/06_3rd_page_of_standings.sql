WITH s AS (
    SELECT ROW_NUMBER() OVER (
            ORDER BY score DESC,
                id
        ) AS '順位',
        *
    FROM results
    ORDER BY score DESC,
        id
)
SELECT `順位`,
    name AS '名前',
    score AS 'スコア'
FROM s
LIMIT 20 OFFSET 40;
