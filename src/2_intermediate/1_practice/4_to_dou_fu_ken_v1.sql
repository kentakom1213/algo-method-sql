SELECT `分類`,
    COUNT(*) AS '総数'
FROM (
        SELECT *,
            CASE
                WHEN name LIKE '%都' THEN '都'
                WHEN name LIKE '%道' THEN '道'
                WHEN name LIKE '%府' THEN '府'
                ELSE '県'
            END AS '分類'
        FROM prefectures
    )
GROUP BY `分類`;
