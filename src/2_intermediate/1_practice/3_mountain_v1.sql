SELECT *
FROM prefectures
WHERE name NOT LIKE '山%'
    AND name LIKE '%山%';
