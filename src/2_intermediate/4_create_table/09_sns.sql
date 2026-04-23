-- 外部キー制約
PRAGMA foreign_keys = ON;
-- テーブル作成
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    body TEXT CHECK(
        1 <= LENGTH(body)
        AND LENGTH(body) <= 140
    ),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);
