SELECT title, release_year
FROM games
WHERE release_year > (SELECT AVG(release_year) FROM games)
ORDER BY release_year DESC; 

SELECT title
FROM games
WHERE genre_id IN (
    SELECT id
    FROM genres
    WHERE name IN ('RPG', 'Strategy')
)
ORDER BY title ASC; 

SELECT name FROM genres 
WHERE EXISTS (
    SELECT 1
    FROM games
    WHERE games.genre_id = genres.id
) 
ORDER BY name ASC;  

SELECT genres.name, COUNT(games.id) AS game_count
FROM genres
LEFT JOIN games ON games.genre_id = genres.id
GROUP BY genres.name
ORDER BY game_count ASC, genres.name ASC;

SELECT title,
       release_year,
       (SELECT ROUND(AVG(release_year), 2) FROM games) AS average_year
FROM games
ORDER BY release_year ASC; 

SELECT title,
       release_year,
       genres.name AS genre_name
FROM games
LEFT JOIN genres ON games.genre_id = genres.id
WHERE release_year > (SELECT AVG(release_year) FROM games)
ORDER BY games.release_year ASC;