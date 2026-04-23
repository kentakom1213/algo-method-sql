SELECT id,
    CASE
        name
        WHEN '茨木県' THEN '茨城県'
        WHEN '取鳥県' THEN '鳥取県'
        ELSE name
    END as name,
    region,
    area,
    population
FROM prefectures;
