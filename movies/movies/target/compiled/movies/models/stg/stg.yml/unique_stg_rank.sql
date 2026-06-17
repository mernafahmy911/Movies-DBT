select
    movie_rank as unique_field,
    count(*) as n_records
from {{ ref('stg_movies') }}
where movie_rank is not null
group by movie_rank
having count(*) > 1