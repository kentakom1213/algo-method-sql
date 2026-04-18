SELECT *
FROM prefectures
WHERE name LIKE '栃木県'
    OR name LIKE '群馬県'
    OR name LIKE '埼玉県'
    OR name LIKE '山梨県'
    OR name LIKE '長野県'
    OR name LIKE '岐阜県'
    OR name LIKE '滋賀県'
    OR name LIKE '奈良県'
ORDER BY area DESC;
