CREATE TABLE users (
    id TEXT NOT NULL PRIMARY KEY,
    name TEXT UNIQUE,
    email TEXT UNIQUE,
    age INTEGER
);
