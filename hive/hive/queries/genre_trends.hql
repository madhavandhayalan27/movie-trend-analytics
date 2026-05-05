-- Query 1: Most Popular Genres Over Time
SELECT
    YEAR(FROM_UNIXTIME(r.timestamp))   AS rating_year,
    genre,
    COUNT(*)                            AS total_ratings,
    ROUND(AVG(r.rating), 2)             AS avg_rating
FROM ratings r
JOIN movies m ON r.movieId = m.movieId
LATERAL VIEW explode(split(m.genres, '[|]')) g AS genre
WHERE genre != '(no genres listed)'
  AND YEAR(FROM_UNIXTIME(r.timestamp)) BETWEEN 1995 AND 2019
GROUP BY YEAR(FROM_UNIXTIME(r.timestamp)), genre
ORDER BY rating_year, total_ratings DESC;
