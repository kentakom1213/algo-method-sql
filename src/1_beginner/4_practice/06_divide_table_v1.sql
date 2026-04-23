-- account_titles テーブルへの挿入
INSERT INTO account_titles
SELECT category_id,
    category_title,
    expense_class
FROM expenses_everything
GROUP BY category_id
ORDER BY category_id;
-- stores テーブルへの挿入
INSERT INTO stores
SELECT store_id,
    store_name
FROM expenses_everything
GROUP BY store_id
ORDER BY store_id;
