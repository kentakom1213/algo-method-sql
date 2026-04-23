SELECT p.name AS '都道府県名'
FROM prefectures AS p
    INNER JOIN cities AS c ON p.id = c.prefecture_id
WHERE c.name = '府中市';
