SELECT *
FROM users
WHERE flg_data_public = 1
    AND rank IS NULL
    AND name LIKE '%RURU';
