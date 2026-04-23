CREATE TABLE users (
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT UNIQUE,
    age INTEGER,
    CHECK(
        5 <= LENGTH(name)
        AND LENGTH(name) <= 15
    ),
    CHECK(age >= 13)
);
