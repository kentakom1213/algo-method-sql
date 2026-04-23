SELECT *
FROM prefectures
WHERE population * 2 > (
        SELECT MAX(population)
        FROM prefectures
    )
ORDER BY population DESC;
