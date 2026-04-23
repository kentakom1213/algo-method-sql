-- 削除
DELETE FROM prefectures
WHERE id = 0
    OR id >= 48;
-- 表示
SELECT *
FROM prefectures;
