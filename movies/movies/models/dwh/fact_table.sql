{{ config(materialized='table') }}

SELECT 
    s.movie_rank,
    s.imdb_id,
    d.director_id,
    p.production_id,
    s.release_year,
    s.imdb_score_10,
    s.imdb_score_100,
    s.imdb_votes,
    s.rt_critic_rating,
    s.rt_critic_reviews,
    s.audience_rating,
    s.audience_reviews,
    s.metacritic_score,
    s.letterboxd_score,
    s.letterboxd_votes,
    s.google_score,
    s.flickmetrix_score,
    s.custom_score
FROM {{ ref('stg_movies') }} AS s
INNER JOIN {{ ref('dim_movies') }} AS m 
    ON s.imdb_id = m.imdb_id
INNER JOIN {{ ref('dim_directors') }} AS d 
    ON s.director = d.director
LEFT JOIN {{ ref('dim_production') }} AS p 
    ON s.production_company = p.production_company