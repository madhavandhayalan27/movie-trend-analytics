-- Query 2: Actor and Director Success Analysis
SELECT
    n.primaryName,
    p.category,
    COUNT(DISTINCT p.tconst)                        AS total_titles,
    ROUND(AVG(CAST(ir.averageRating AS FLOAT)), 2)  AS avg_imdb_rating,
    SUM(CAST(ir.numVotes AS INT))                   AS total_votes
FROM imdb_principals p
JOIN imdb_names   n  ON p.nconst = n.nconst
JOIN imdb_ratings ir ON p.tconst = ir.tconst
JOIN imdb_basics  ib ON p.tconst = ib.tconst
WHERE p.category IN ('actor','actress','director')
  AND CAST(ir.numVotes AS INT) > 50000
  AND ib.titleType = 'movie'
GROUP BY n.primaryName, p.category
HAVING COUNT(DISTINCT p.tconst) >= 3
ORDER BY avg_imdb_rating DESC, total_votes DESC
LIMIT 50;
