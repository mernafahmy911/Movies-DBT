{{ config(materialized='table') }}

select
    row_number() over (order by director) as director_id,
    director,
    count(*) as total_movies
from {{ ref('stg_movies') }}
group by director