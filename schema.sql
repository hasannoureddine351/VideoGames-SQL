.import --csv game_sales.csv tempI
.import --csv reviews.csv tempII


CREATE TABLE game_sales (
    id INTEGER PRIMARY KEY,
    game TEXT NOT NULL DEFAULT 'N/A',
    platform TEXT NOT NULL DEFAULT 'N/A',
    publisher TEXT NOT NULL DEFAULT 'N/A',
    developer TEXT NOT NULL DEFAULT 'N/A',
    games_sold REAL NOT NULL DEFAULT 0.0,
    year INTEGER NOT NULL
);

CREATE INDEX idx_game_sales_game ON game_sales(game);


CREATE TABLE reviews (
    id INTEGER PRIMARY KEY,
    game TEXT NOT NULL DEFAULT 'N/A',
    critic_score REAL NOT NULL DEFAULT 'N/A',
    user_score REAL NOT NULL DEFAULT 'N/A'
);


CREATE INDEX idx_reviews_game ON reviews(game);