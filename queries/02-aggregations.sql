SELECT genres.name AS genre, COUNT(games.id) AS game_count
FROM games
INNER JOIN genres
ON games.genre_id = genres.id
GROUP BY genres.name
ORDER BY game_count DESC; 

SELECT genres.name AS genre, COUNT(games.id) AS game_count
FROM games
INNER JOIN genres
ON games.genre_id = genres.id
GROUP BY genres.name
HAVING COUNT(games.id) > 2
ORDER BY game_count DESC; 

SELECT ROUND(AVG(score), 2) AS average_score
FROM games; 

SELECT COUNT (title) AS total_games, 
       COUNT (score) AS rated_games
FROM games; 

SELECT COUNT (DISTINCT genre_id) AS unique_genres
FROM games; 

SELECT MIN(release_year) AS earliest_release, 
       MAX(release_year) AS latest_release
FROM games;