WITH title_basics AS
(SELECT tconst, title_type, average_rating, num_votes
FROM bigquery-public-data.imdb.title_basics 
FULL OUTER JOIN bigquery-public-data.imdb.title_ratings USING (tconst))

SELECT *
FROM title_basics 