{{ config(materialized='table') }}

SELECT 
    "Rank"::INT AS movie_rank,
    "Title"::VARCHAR AS title,
    "Year"::INT AS release_year,
    "Genre"::VARCHAR AS genre,
    "Director"::VARCHAR AS director,
    "Cast"::VARCHAR AS cast_members,
    "Language"::VARCHAR AS language,
    "Plot"::VARCHAR AS plot,
    "Awards"::VARCHAR AS awards,
    "Production"::VARCHAR AS production_company,
    "imdbID"::VARCHAR AS imdb_id,
    "RT_URL"::VARCHAR AS rt_url,
    "Streaming_On"::VARCHAR AS streaming_on,
    "Flickmetrix_Score"::FLOAT AS flickmetrix_score,
    "IMDb_10"::FLOAT AS imdb_score_10,
    "IMDb_100"::FLOAT AS imdb_score_100,
    "IMDb_Votes"::INT AS imdb_votes,
    "Metacritic"::FLOAT AS metacritic_score,
    "Critic_Rating_RT"::FLOAT AS rt_critic_rating,
    "Critic_Reviews"::INT AS rt_critic_reviews,
    "Audience_Rating"::FLOAT AS audience_rating,
    "Audience_Reviews"::INT AS audience_reviews,
    "Letterboxd"::FLOAT AS letterboxd_score,
    "Letterboxd_Votes"::INT AS letterboxd_votes,
    "Google_Score"::FLOAT AS google_score,
    "Custom_Score"::FLOAT AS custom_score
FROM {{ ref('raw_movies') }}
WHERE "Rank" IS NOT NULL 
  AND "Title" IS NOT NULL 
  AND "Year" IS NOT NULL 
  AND "imdbID" IS NOT NULL