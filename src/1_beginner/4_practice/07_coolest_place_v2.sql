-- DISTINCT ON を使う（PostgresQL のみ
SELECT DISTINCT ON (prefecture) *
FROM temperature_august
ORDER BY prefecture,
    highest,
    station_id;
