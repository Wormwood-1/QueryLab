SELECT title,
       release_year,
       CASE
    WHEN release_year < 2010 THEN 'Classic'
    WHEN release_year < 2015 THEN 'Early Modern'
    WHEN release_year < 2020 THEN 'Late Modern'
    ELSE 'Recent'
END AS age_category
FROM games
ORDER BY release_year ASC; 


SELECT title,
       genres.name AS genre_name,
       CASE
           WHEN genres.name IS NOT NULL THEN genres.name
           ELSE 'Unknown'
       END AS genre_category
FROM games
LEFT JOIN genres ON games.genre_id = genres.id
ORDER BY title ASC;

SELECT title,
       score,
       CASE
           WHEN score IS NULL THEN 'Not rated'
           ELSE 'Rated'
       END AS rating_status
FROM games
ORDER BY title ASC; 

SELECT
    CASE
        WHEN score IS NULL THEN 'Not rated'
        ELSE 'Rated'
    END AS rating_status,
    COUNT(*) AS game_count
FROM games
GROUP BY
    CASE
        WHEN score IS NULL THEN 'Not rated'
        ELSE 'Rated'
    END
ORDER BY game_count DESC; 

WITH game_ratings AS (
    SELECT
        title,
        CASE
            WHEN score IS NULL THEN 'Not rated'
            ELSE 'Rated'
        END AS rating_status
    FROM games
)
SELECT
    rating_status,
    COUNT(*) AS game_count
FROM game_ratings
GROUP BY rating_status
ORDER BY game_count DESC;