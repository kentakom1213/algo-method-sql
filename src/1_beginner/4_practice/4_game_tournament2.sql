WITH t AS(
    SELECT ROW_NUMBER() OVER (
            ORDER BY score DESC,
                id
        ) AS '順位',
        name,
        score
    FROM results
)
SELECT `順位`,
    name AS '名前',
    score AS 'スコア'
FROM t
WHERE `順位` IN (1, 2, 3, 10);
