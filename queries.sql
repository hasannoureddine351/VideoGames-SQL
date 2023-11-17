INSERT INTO game_sales (game, platform, publisher, developer, games_sold, year)
SELECT game, platform, publisher, developer, games_sold, year
FROM tempI;

DROP TABLE tempI;

INSERT INTO reviews (game,user_score,critic_score)
SELECT game,user_score,critic_score
FROM tempII;

DROP TABLE tempII;


-- Let's begin by looking at some of the top selling video games of all time!

SELECT *
FROM game_sales
ORDER BY games_sold DESC
LIMIT 10;


-- Missing review scores

SELECT COUNT(g.game)
FROM game_sales g
LEFT JOIN reviews r
ON g.game = r.game
WHERE r.critic_score IS NULL AND r.user_score IS NULL;

-- Years that video game critics loved

SELECT 
    g.year, 
    ROUND(AVG(r.critic_score), 2) AS avg_critic_score
FROM game_sales g
LEFT JOIN reviews r
ON g.game = r.game
GROUP BY g.year
ORDER BY avg_critic_score DESC 
LIMIT 10;


--  Was 1982 really that great?


SELECT 
    g.year,
    ROUND(AVG(r.critic_score), 2) AS avg_critic_score,
    COUNT(g.game) AS num_games
FROM game_sales g
INNER JOIN reviews r
ON g.game = r.game
GROUP BY g.year
HAVING COUNT(g.game) > 4
ORDER BY avg_critic_score DESC 
LIMIT 10;


-- Years that dropped off the critics' favorites list


SELECT 
    year, 
    avg_critic_score
FROM top_critic_years
EXCEPT
SELECT year, avg_critic_score
FROM top_critic_years_more_than_four_games
ORDER BY avg_critic_score DESC;


--  Years video game players loved

SELECT
    g.year,
    COUNT(g.game) AS num_games,
    ROUND(AVG(r.user_score), 2) AS avg_user_score  
FROM game_sales g
INNER JOIN reviews r
ON g.game = r.game
GROUP BY g.year
HAVING COUNT(g.game) > 4
ORDER BY avg_user_score DESC
LIMIT 10;