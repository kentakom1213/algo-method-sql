CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER,
    CONSTRAINT fk_UserId FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_PostId FOREIGN KEY (post_id) REFERENCES posts(id)
);
