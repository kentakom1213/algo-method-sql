SELECT station_id,
    name,
    prefecture,
    highest,
    lowest
FROM (
        SELECT ROW_NUMBER() OVER (
                PARTITION BY prefecture
                ORDER BY highest,
                    station_id
            ) AS 'idx',
            station_id,
            name,
            prefecture,
            highest,
            lowest
        FROM temperature_august
        ORDER BY highest,
            station_id
    )
WHERE `idx` = 1
ORDER BY highest,
    station_id;
