{{ config(materialized='view') }}

select
    cast("Rank" as integer) as movie_rank,
    cast("Title" as varchar) as title,
    cast("Year" as integer) as release_year,
    cast("Genre" as varchar) as genre,
    cast("Director" as varchar) as director,
    cast("Cast" as varchar) as cast_members,
    cast("Language" as varchar) as language,
    cast("Plot" as varchar) as plot,
    cast("Awards" as varchar) as awards,
    cast("Production" as varchar) as production_company,
    cast("imdbID" as varchar) as imdb_id,
    cast("RT_URL" as varchar) as rt_url,
    cast("Streaming_On" as varchar) as streaming_on,
    cast("Flickmetrix_Score" as float) as flickmetrix_score,
    cast("IMDb_10" as float) as imdb_score_10,
    cast("IMDb_100" as float) as imdb_score_100,
    cast("IMDb_Votes" as integer) as imdb_votes,
    cast("Metacritic" as float) as metacritic_score,
    cast("Critic_Rating_RT" as float) as rt_critic_rating,
    cast("Critic_Reviews" as integer) as rt_critic_reviews,
    cast("Audience_Rating" as float) as audience_rating,
    cast("Audience_Reviews" as integer) as audience_reviews,
    cast("Letterboxd" as float) as letterboxd_score,
    cast("Letterboxd_Votes" as integer) as letterboxd_votes,
    cast("Google_Score" as float) as google_score,
    cast("Custom_Score" as float) as custom_score
from {{ ref('raw_movies') }}
where "Rank" is not null
  and "Title" is not null
  and "Year" is not null
  and "imdbID" is not null