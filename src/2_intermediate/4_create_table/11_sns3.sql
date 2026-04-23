CREATE TABLE follows (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    followee_id INTEGER,
    follower_id INTEGER,
    CONSTRAINT fk_FolloweeId FOREIGN KEY (followee_id) REFERENCES users(id),
    CONSTRAINT fk_FollowerId FOREIGN KEY (follower_id) REFERENCES users(id)
);
