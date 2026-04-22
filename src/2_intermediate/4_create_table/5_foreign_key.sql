-- 参照整合性制約
PRAGMA foreign_keys = ON;
-- テーブル定義
CREATE TABLE prefectures (
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT,
    region_id INTEGER,
    FOREIGN KEY (region_id) REFERENCES regions(id)
);
CREATE TABLE regions (id INTEGER NOT NULL PRIMARY KEY, name TEXT);
