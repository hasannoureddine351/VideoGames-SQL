# Video Game Sales and Reviews Database Project

This database project focuses on storing and analyzing video game sales and reviews data. It consists of two main tables: `game_sales` and `reviews`, capturing information about game sales figures and corresponding reviews, respectively.

## Table Schema

### `game_sales` Table

- `id`: Integer primary key
- `game`: Text, name of the game
- `platform`: Text, gaming platform
- `publisher`: Text, game publisher
- `developer`: Text, game developer
- `games_sold`: Real, quantity of games sold
- `year`: Integer, year of release

### `reviews` Table

- `id`: Integer primary key
- `game`: Text, name of the game
- `critic_score`: Real, score given by critics
- `user_score`: Real, score given by users

## Data Loading

The project involves loading data into these tables from external sources (`tempI` and `tempII` CSV files) and subsequently removing the temporary tables.

## Queries

The SQL queries provided offer various insights into the dataset:

1. **Top Selling Games**: Retrieves the top 10 selling games based on sales figures.
2. **Missing Review Scores**: Counts games with missing review scores.
3. **Years Critics Loved**: Lists the top 10 years based on average critic scores.
4. **1982 Evaluation**: Analyzes games released in 1982 with a minimum of 5 reviews.
5. **Years Dropping Off Critics' List**: Shows years that were initially highly rated but dropped off.
6. **Years Players Loved**: Displays the top 10 years based on average user scores.

## Usage

1. **Setup**: Set up the database using the provided schema.
2. **Data Loading**: Import data from CSV files using the provided queries.
3. **Queries**: Execute the SQL queries to obtain insights and analyses.

## How to Run

1. Create a SQLite database.
2. Execute the SQL schema provided in your preferred SQLite environment.
3. Run the SQL queries provided to load data and perform analyses.
