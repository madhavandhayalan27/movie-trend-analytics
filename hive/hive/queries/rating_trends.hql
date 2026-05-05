-- Query 3: Rating Trends Over Time
SELECT
    YEAR(FROM_UNIXTIME(timestamp))                                          AS rating_year,
    COUNT(*)                                                                AS total_ratings,
    ROUND(AVG(rating), 3)                                                   AS avg_rating,
    COUNT(DISTINCT userId)                                                  AS unique_users,
    COUNT(DISTINCT movieId)                                                 AS unique_movies,
    ROUND(SUM(CASE WHEN rating >= 4.0 THEN 1 ELSE 0 END)*100.0/COUNT(*),1) AS pct_high_ratings
FROM ratings
GROUP BY YEAR(FROM_UNIXTIME(timestamp))
ORDER BY rating_year;
