WITH sorted AS (
    SELECT name,
        MAX(score) AS 'max_score'
    FROM results
    GROUP BY name
    ORDER BY `max_score` DESC,
        id
)
SELECT ROW_NUMBER() OVER () AS '順位',
    name AS '名前',
    max_score AS 'スコア'
FROM sorted;
