SELECT games.title, games.release_year, genres.name AS genre
FROM games
INNER JOIN genres
ON games.genre_id = genres.id
ORDER BY games.release_year ASC;

SELECT games.title, genres.name AS genre
FROM games
LEFT JOIN genres
ON games.genre_id = genres.id
ORDER BY games.title ASC;

SELECT games.title, COALESCE(genres.name, 'Unknown') AS genre
FROM games
LEFT JOIN genres
ON games.genre_id = genres.id
ORDER BY games.title ASC;