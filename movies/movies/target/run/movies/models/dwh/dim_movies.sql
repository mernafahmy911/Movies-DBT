{{ config(materialized='table') }}

select
    movie_rank,
    title,
    release_year,
    genre,
    director,
    cast_members,
    language,
    plot,
    awards,
    production_company,
    imdb_id,
    rt_url,
    streaming_on
from {{ ref('stg_movies') }}