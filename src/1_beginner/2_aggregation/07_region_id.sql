SELECT name AS '都道府県名',
    (
        SELECT r.name
        FROM regions AS r
        WHERE p.region_id = r.id
    ) AS '地方名'
FROM prefectures AS p;
