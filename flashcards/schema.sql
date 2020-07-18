DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS flashcards;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE flashcards (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  order INTEGER NOT NULL,
  front TEXT NOT NULL,
  back TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);