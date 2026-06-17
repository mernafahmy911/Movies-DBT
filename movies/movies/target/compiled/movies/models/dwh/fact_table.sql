{{ config(materialized='table') }}

select
    m.movie_rank,
    m.imdb_id,
    d.director_id,
    p.production_id,
    m.release_year,
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
from {{ ref('stg_movies') }} s
join {{ ref('dim_movies') }} m on s.imdb_id = m.imdb_id
join {{ ref('dim_directors') }} d on s.director = d.director
left join {{ ref('dim_production') }} p on s.production_company = p.production_company