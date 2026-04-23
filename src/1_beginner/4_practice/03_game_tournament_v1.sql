WITH t AS (
    SELECT *
    FROM results as r
    WHERE NOT EXISTS (
            SELECT 1
            FROM optout as o
            WHERE r.name = o.name
        )
    ORDER BY score DESC,
        id
)
SELECT ROW_NUMBER() OVER () AS '順位',
    name AS '名前',
    score AS 'スコア'
FROM t;
