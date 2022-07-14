-- SQLite
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE publications (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL
);

CREATE TABLE posts (
	id INTEGER PRIMARY KEY,
   	user_id INTEGER NOT NULL,
    date_time DATETIME NOT NULL,
    publication_id INTEGER NOT NULL,
    post TEXT,
    FOREIGN KEY (user_id) 
        REFERENCES users (user_id) 
            ON DELETE CASCADE 
            ON UPDATE NO ACTION,
    FOREIGN KEY (publication_id) 
        REFERENCES publications (publication_id) 
            ON DELETE CASCADE 
            ON UPDATE NO ACTION
);