SELECT p.name AS '都道府県名',
    r.id AS '地方ID',
    r.name AS '地方名'
FROM prefectures AS p
    INNER JOIN regions AS r ON p.region_id = r.id;
