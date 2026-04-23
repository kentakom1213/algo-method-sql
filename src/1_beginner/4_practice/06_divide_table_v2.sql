-- account_titles テーブルへの挿入
INSERT INTO account_titles
SELECT DISTINCT category_id,
    category_title,
    expense_class
FROM expenses_everything
ORDER BY category_id;
-- stores テーブルへの挿入
INSERT INTO stores
SELECT DISTINCT store_id,
    store_name
FROM expenses_everything
ORDER BY store_id;
