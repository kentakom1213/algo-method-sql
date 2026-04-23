SELECT *
FROM prefectures AS p
WHERE EXISTS (
        SELECT 1
        FROM kanto_regions as k
        WHERE k.name = p.name
    );
