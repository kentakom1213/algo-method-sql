SELECT p.name AS '都道府県名',
    c.name AS '市町村名',
    w.name AS '区名'
FROM wards AS w
    INNER JOIN cities AS c ON w.city_id = c.id
    INNER JOIN prefectures as p ON c.prefecture_id = p.id;
