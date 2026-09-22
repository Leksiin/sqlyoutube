CREATE TABLE user_videos(
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE users(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_videos_id INTEGER,
  
  FOREIGN KEY (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE videos(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_videos_id INTEGER,
  
  FOREIGN KEY (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE watch_history(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_videos_id INTEGER,
  FOREIGN KEY (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE analytics_videos(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  videos_id INTEGER,
  FOREIGN KEY (videos_id) REFERENCES videos(id)
);

CREATE TABLE video_likes(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  videos_id INTEGER NOT NULL,
  FOREIGN KEY(videos_id) REFERENCES video(id),
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE comments(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  videos_id INTEGER,
  content TEXT NOT NULL,
  FOREIGN KEY (videos_id) REFERENCES videos(id),
  FOREIGN KEY (user_id) REFERENCES user(id)
)
